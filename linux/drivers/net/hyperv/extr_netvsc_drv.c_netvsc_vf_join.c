
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_context {int vf_takeover; } ;
struct net_device {int name; int flags; } ;


 int IFF_SLAVE ;
 int NETDEV_JOIN ;
 int VF_TAKEOVER_INT ;
 int call_netdevice_notifiers (int ,struct net_device*) ;
 int netdev_err (struct net_device*,char*,int,...) ;
 int netdev_info (struct net_device*,char*,int ) ;
 int netdev_master_upper_dev_link (struct net_device*,struct net_device*,int *,int *,int *) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 int netdev_rx_handler_register (struct net_device*,int ,struct net_device*) ;
 int netdev_rx_handler_unregister (struct net_device*) ;
 int netvsc_vf_handle_frame ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int netvsc_vf_join(struct net_device *vf_netdev,
     struct net_device *ndev)
{
 struct net_device_context *ndev_ctx = netdev_priv(ndev);
 int ret;

 ret = netdev_rx_handler_register(vf_netdev,
      netvsc_vf_handle_frame, ndev);
 if (ret != 0) {
  netdev_err(vf_netdev,
      "can not register netvsc VF receive handler (err = %d)\n",
      ret);
  goto rx_handler_failed;
 }

 ret = netdev_master_upper_dev_link(vf_netdev, ndev,
        ((void*)0), ((void*)0), ((void*)0));
 if (ret != 0) {
  netdev_err(vf_netdev,
      "can not set master device %s (err = %d)\n",
      ndev->name, ret);
  goto upper_link_failed;
 }


 vf_netdev->flags |= IFF_SLAVE;

 schedule_delayed_work(&ndev_ctx->vf_takeover, VF_TAKEOVER_INT);

 call_netdevice_notifiers(NETDEV_JOIN, vf_netdev);

 netdev_info(vf_netdev, "joined to %s\n", ndev->name);
 return 0;

upper_link_failed:
 netdev_rx_handler_unregister(vf_netdev);
rx_handler_failed:
 return ret;
}
