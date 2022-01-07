
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_cls_u32_offload {int command; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;



 int cxgb4_config_knode (struct net_device*,struct tc_cls_u32_offload*) ;
 int cxgb4_delete_knode (struct net_device*,struct tc_cls_u32_offload*) ;

__attribute__((used)) static int cxgb_setup_tc_cls_u32(struct net_device *dev,
     struct tc_cls_u32_offload *cls_u32)
{
 switch (cls_u32->command) {
 case 129:
 case 128:
  return cxgb4_config_knode(dev, cls_u32);
 case 130:
  return cxgb4_delete_knode(dev, cls_u32);
 default:
  return -EOPNOTSUPP;
 }
}
