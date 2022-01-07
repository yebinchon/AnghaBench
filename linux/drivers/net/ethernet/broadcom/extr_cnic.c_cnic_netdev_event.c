
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct cnic_local {int dummy; } ;
struct cnic_dev {struct cnic_local* cnic_priv; int list; } ;


 unsigned long NETDEV_GOING_DOWN ;
 unsigned long NETDEV_REGISTER ;
 unsigned long NETDEV_UNREGISTER ;
 unsigned long NETDEV_UP ;
 int NOTIFY_DONE ;
 int VLAN_CFI_MASK ;
 int cnic_dev_lock ;
 int cnic_free_dev (struct cnic_dev*) ;
 struct cnic_dev* cnic_from_netdev (struct net_device*) ;
 int cnic_get_vlan (struct net_device*,struct net_device**) ;
 int cnic_hold (struct cnic_dev*) ;
 int cnic_put (struct cnic_dev*) ;
 int cnic_rcv_netevent (struct cnic_local*,unsigned long,int ) ;
 scalar_t__ cnic_register_netdev (struct cnic_dev*) ;
 int cnic_start_hw (struct cnic_dev*) ;
 int cnic_stop_hw (struct cnic_dev*) ;
 int cnic_ulp_exit (struct cnic_dev*) ;
 int cnic_ulp_init (struct cnic_dev*) ;
 int cnic_ulp_start (struct cnic_dev*) ;
 int cnic_ulp_stop (struct cnic_dev*) ;
 int cnic_unregister_netdev (struct cnic_dev*) ;
 struct cnic_dev* is_cnic_dev (struct net_device*) ;
 int list_del_init (int *) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static int cnic_netdev_event(struct notifier_block *this, unsigned long event,
        void *ptr)
{
 struct net_device *netdev = netdev_notifier_info_to_dev(ptr);
 struct cnic_dev *dev;
 int new_dev = 0;

 dev = cnic_from_netdev(netdev);

 if (!dev && event == NETDEV_REGISTER) {

  dev = is_cnic_dev(netdev);
  if (dev) {
   new_dev = 1;
   cnic_hold(dev);
  }
 }
 if (dev) {
  struct cnic_local *cp = dev->cnic_priv;

  if (new_dev)
   cnic_ulp_init(dev);
  else if (event == NETDEV_UNREGISTER)
   cnic_ulp_exit(dev);

  if (event == NETDEV_UP) {
   if (cnic_register_netdev(dev) != 0) {
    cnic_put(dev);
    goto done;
   }
   if (!cnic_start_hw(dev))
    cnic_ulp_start(dev);
  }

  cnic_rcv_netevent(cp, event, 0);

  if (event == NETDEV_GOING_DOWN) {
   cnic_ulp_stop(dev);
   cnic_stop_hw(dev);
   cnic_unregister_netdev(dev);
  } else if (event == NETDEV_UNREGISTER) {
   write_lock(&cnic_dev_lock);
   list_del_init(&dev->list);
   write_unlock(&cnic_dev_lock);

   cnic_put(dev);
   cnic_free_dev(dev);
   goto done;
  }
  cnic_put(dev);
 } else {
  struct net_device *realdev;
  u16 vid;

  vid = cnic_get_vlan(netdev, &realdev);
  if (realdev) {
   dev = cnic_from_netdev(realdev);
   if (dev) {
    vid |= VLAN_CFI_MASK;
    cnic_rcv_netevent(dev->cnic_priv, event, vid);
    cnic_put(dev);
   }
  }
 }
done:
 return NOTIFY_DONE;
}
