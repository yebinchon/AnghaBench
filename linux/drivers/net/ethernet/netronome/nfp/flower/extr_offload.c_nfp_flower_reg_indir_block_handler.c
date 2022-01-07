
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_app {int dummy; } ;
struct net_device {int name; } ;


 unsigned long NETDEV_REGISTER ;
 unsigned long NETDEV_UNREGISTER ;
 int NOTIFY_OK ;
 int __flow_indr_block_cb_register (struct net_device*,struct nfp_app*,int ,struct nfp_app*) ;
 int __flow_indr_block_cb_unregister (struct net_device*,int ,struct nfp_app*) ;
 int nfp_fl_is_netdev_to_offload (struct net_device*) ;
 int nfp_flower_cmsg_warn (struct nfp_app*,char*,int ) ;
 int nfp_flower_indr_setup_tc_cb ;

int nfp_flower_reg_indir_block_handler(struct nfp_app *app,
           struct net_device *netdev,
           unsigned long event)
{
 int err;

 if (!nfp_fl_is_netdev_to_offload(netdev))
  return NOTIFY_OK;

 if (event == NETDEV_REGISTER) {
  err = __flow_indr_block_cb_register(netdev, app,
          nfp_flower_indr_setup_tc_cb,
          app);
  if (err)
   nfp_flower_cmsg_warn(app,
          "Indirect block reg failed - %s\n",
          netdev->name);
 } else if (event == NETDEV_UNREGISTER) {
  __flow_indr_block_cb_unregister(netdev,
      nfp_flower_indr_setup_tc_cb,
      app);
 }

 return NOTIFY_OK;
}
