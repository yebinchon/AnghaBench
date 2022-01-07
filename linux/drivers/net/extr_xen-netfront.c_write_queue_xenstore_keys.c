
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenbus_transaction {int dummy; } ;
struct xenbus_device {char* nodename; } ;
struct netfront_queue {int id; int rx_evtchn; int tx_evtchn; int rx_ring_ref; int tx_ring_ref; TYPE_1__* info; } ;
struct TYPE_2__ {struct xenbus_device* xbdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kzalloc (size_t,int ) ;
 int snprintf (char*,size_t,char*,char*,int) ;
 int strlen (char*) ;
 int xenbus_dev_fatal (struct xenbus_device*,int,char*,char const*) ;
 int xenbus_printf (struct xenbus_transaction,char*,char*,char*,int ) ;

__attribute__((used)) static int write_queue_xenstore_keys(struct netfront_queue *queue,
      struct xenbus_transaction *xbt, int write_hierarchical)
{




 struct xenbus_device *dev = queue->info->xbdev;
 int err;
 const char *message;
 char *path;
 size_t pathsize;


 if (write_hierarchical) {
  pathsize = strlen(dev->nodename) + 10;
  path = kzalloc(pathsize, GFP_KERNEL);
  if (!path) {
   err = -ENOMEM;
   message = "out of memory while writing ring references";
   goto error;
  }
  snprintf(path, pathsize, "%s/queue-%u",
    dev->nodename, queue->id);
 } else {
  path = (char *)dev->nodename;
 }


 err = xenbus_printf(*xbt, path, "tx-ring-ref", "%u",
   queue->tx_ring_ref);
 if (err) {
  message = "writing tx-ring-ref";
  goto error;
 }

 err = xenbus_printf(*xbt, path, "rx-ring-ref", "%u",
   queue->rx_ring_ref);
 if (err) {
  message = "writing rx-ring-ref";
  goto error;
 }




 if (queue->tx_evtchn == queue->rx_evtchn) {

  err = xenbus_printf(*xbt, path,
    "event-channel", "%u", queue->tx_evtchn);
  if (err) {
   message = "writing event-channel";
   goto error;
  }
 } else {

  err = xenbus_printf(*xbt, path,
    "event-channel-tx", "%u", queue->tx_evtchn);
  if (err) {
   message = "writing event-channel-tx";
   goto error;
  }

  err = xenbus_printf(*xbt, path,
    "event-channel-rx", "%u", queue->rx_evtchn);
  if (err) {
   message = "writing event-channel-rx";
   goto error;
  }
 }

 if (write_hierarchical)
  kfree(path);
 return 0;

error:
 if (write_hierarchical)
  kfree(path);
 xenbus_dev_fatal(dev, err, "%s", message);
 return err;
}
