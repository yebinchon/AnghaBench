
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xenbus_transaction {int dummy; } ;
struct xenbus_device {char const* nodename; int dev; } ;
struct netfront_queue {int dummy; } ;
struct netfront_info {struct netfront_queue* queues; TYPE_2__* xbdev; TYPE_1__* netdev; } ;
struct TYPE_4__ {int otherend; } ;
struct TYPE_3__ {int dev_addr; scalar_t__ irq; } ;


 int EAGAIN ;
 int XBT_NIL ;
 int device_unregister (int *) ;
 int kfree (struct netfront_queue*) ;
 unsigned int min (unsigned int,int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int setup_netfront (struct xenbus_device*,struct netfront_queue*,unsigned int) ;
 int write_queue_xenstore_keys (struct netfront_queue*,struct xenbus_transaction*,int) ;
 int xen_net_read_mac (struct xenbus_device*,int ) ;
 int xenbus_dev_fatal (struct xenbus_device*,int,char*,...) ;
 scalar_t__ xenbus_exists (int ,int ,char*) ;
 int xenbus_printf (struct xenbus_transaction,char const*,char*,char*,int) ;
 unsigned int xenbus_read_unsigned (int ,char*,int) ;
 int xenbus_transaction_end (struct xenbus_transaction,int) ;
 int xenbus_transaction_start (struct xenbus_transaction*) ;
 int xenbus_write (struct xenbus_transaction,char const*,char*,char*) ;
 int xennet_create_queues (struct netfront_info*,unsigned int*) ;
 int xennet_destroy_queues (struct netfront_info*) ;
 int xennet_disconnect_backend (struct netfront_info*) ;
 int xennet_max_queues ;

__attribute__((used)) static int talk_to_netback(struct xenbus_device *dev,
      struct netfront_info *info)
{
 const char *message;
 struct xenbus_transaction xbt;
 int err;
 unsigned int feature_split_evtchn;
 unsigned int i = 0;
 unsigned int max_queues = 0;
 struct netfront_queue *queue = ((void*)0);
 unsigned int num_queues = 1;

 info->netdev->irq = 0;


 max_queues = xenbus_read_unsigned(info->xbdev->otherend,
       "multi-queue-max-queues", 1);
 num_queues = min(max_queues, xennet_max_queues);


 feature_split_evtchn = xenbus_read_unsigned(info->xbdev->otherend,
     "feature-split-event-channels", 0);


 err = xen_net_read_mac(dev, info->netdev->dev_addr);
 if (err) {
  xenbus_dev_fatal(dev, err, "parsing %s/mac", dev->nodename);
  goto out_unlocked;
 }

 rtnl_lock();
 if (info->queues)
  xennet_destroy_queues(info);

 err = xennet_create_queues(info, &num_queues);
 if (err < 0) {
  xenbus_dev_fatal(dev, err, "creating queues");
  kfree(info->queues);
  info->queues = ((void*)0);
  goto out;
 }
 rtnl_unlock();


 for (i = 0; i < num_queues; ++i) {
  queue = &info->queues[i];
  err = setup_netfront(dev, queue, feature_split_evtchn);
  if (err)
   goto destroy_ring;
 }

again:
 err = xenbus_transaction_start(&xbt);
 if (err) {
  xenbus_dev_fatal(dev, err, "starting transaction");
  goto destroy_ring;
 }

 if (xenbus_exists(XBT_NIL,
     info->xbdev->otherend, "multi-queue-max-queues")) {

  err = xenbus_printf(xbt, dev->nodename,
        "multi-queue-num-queues", "%u", num_queues);
  if (err) {
   message = "writing multi-queue-num-queues";
   goto abort_transaction_no_dev_fatal;
  }
 }

 if (num_queues == 1) {
  err = write_queue_xenstore_keys(&info->queues[0], &xbt, 0);
  if (err)
   goto abort_transaction_no_dev_fatal;
 } else {

  for (i = 0; i < num_queues; ++i) {
   queue = &info->queues[i];
   err = write_queue_xenstore_keys(queue, &xbt, 1);
   if (err)
    goto abort_transaction_no_dev_fatal;
  }
 }


 err = xenbus_printf(xbt, dev->nodename, "request-rx-copy", "%u",
       1);
 if (err) {
  message = "writing request-rx-copy";
  goto abort_transaction;
 }

 err = xenbus_printf(xbt, dev->nodename, "feature-rx-notify", "%d", 1);
 if (err) {
  message = "writing feature-rx-notify";
  goto abort_transaction;
 }

 err = xenbus_printf(xbt, dev->nodename, "feature-sg", "%d", 1);
 if (err) {
  message = "writing feature-sg";
  goto abort_transaction;
 }

 err = xenbus_printf(xbt, dev->nodename, "feature-gso-tcpv4", "%d", 1);
 if (err) {
  message = "writing feature-gso-tcpv4";
  goto abort_transaction;
 }

 err = xenbus_write(xbt, dev->nodename, "feature-gso-tcpv6", "1");
 if (err) {
  message = "writing feature-gso-tcpv6";
  goto abort_transaction;
 }

 err = xenbus_write(xbt, dev->nodename, "feature-ipv6-csum-offload",
      "1");
 if (err) {
  message = "writing feature-ipv6-csum-offload";
  goto abort_transaction;
 }

 err = xenbus_transaction_end(xbt, 0);
 if (err) {
  if (err == -EAGAIN)
   goto again;
  xenbus_dev_fatal(dev, err, "completing transaction");
  goto destroy_ring;
 }

 return 0;

 abort_transaction:
 xenbus_dev_fatal(dev, err, "%s", message);
abort_transaction_no_dev_fatal:
 xenbus_transaction_end(xbt, 1);
 destroy_ring:
 xennet_disconnect_backend(info);
 rtnl_lock();
 xennet_destroy_queues(info);
 out:
 rtnl_unlock();
out_unlocked:
 device_unregister(&dev->dev);
 return err;
}
