
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int dummy; } ;
struct net_device {int dummy; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;

 int cxgb_block_cb_list ;
 int cxgb_setup_tc_block_cb ;
 int flow_block_cb_setup_simple (void*,int *,int ,struct port_info*,struct net_device*,int) ;
 struct port_info* netdev2pinfo (struct net_device*) ;

__attribute__((used)) static int cxgb_setup_tc(struct net_device *dev, enum tc_setup_type type,
    void *type_data)
{
 struct port_info *pi = netdev2pinfo(dev);

 switch (type) {
 case 128:
  return flow_block_cb_setup_simple(type_data,
        &cxgb_block_cb_list,
        cxgb_setup_tc_block_cb,
        pi, dev, 1);
 default:
  return -EOPNOTSUPP;
 }
}
