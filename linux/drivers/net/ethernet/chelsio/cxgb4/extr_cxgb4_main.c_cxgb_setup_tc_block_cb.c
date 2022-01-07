
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int port_id; } ;
struct net_device {int dummy; } ;
struct adapter {int flags; int pdev_dev; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int CXGB4_FULL_INIT_DONE ;
 int EINVAL ;
 int EOPNOTSUPP ;


 int cxgb_setup_tc_cls_u32 (struct net_device*,void*) ;
 int cxgb_setup_tc_flower (struct net_device*,void*) ;
 int dev_err (int ,char*,int ) ;
 struct adapter* netdev2adap (struct net_device*) ;
 struct port_info* netdev2pinfo (struct net_device*) ;
 int tc_cls_can_offload_and_chain0 (struct net_device*,void*) ;

__attribute__((used)) static int cxgb_setup_tc_block_cb(enum tc_setup_type type, void *type_data,
      void *cb_priv)
{
 struct net_device *dev = cb_priv;
 struct port_info *pi = netdev2pinfo(dev);
 struct adapter *adap = netdev2adap(dev);

 if (!(adap->flags & CXGB4_FULL_INIT_DONE)) {
  dev_err(adap->pdev_dev,
   "Failed to setup tc on port %d. Link Down?\n",
   pi->port_id);
  return -EINVAL;
 }

 if (!tc_cls_can_offload_and_chain0(dev, type_data))
  return -EOPNOTSUPP;

 switch (type) {
 case 128:
  return cxgb_setup_tc_cls_u32(dev, type_data);
 case 129:
  return cxgb_setup_tc_flower(dev, type_data);
 default:
  return -EOPNOTSUPP;
 }
}
