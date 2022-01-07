
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct flow_cls_offload {int command; } ;


 int EOPNOTSUPP ;



 int cxgb4_tc_flower_destroy (struct net_device*,struct flow_cls_offload*) ;
 int cxgb4_tc_flower_replace (struct net_device*,struct flow_cls_offload*) ;
 int cxgb4_tc_flower_stats (struct net_device*,struct flow_cls_offload*) ;

__attribute__((used)) static int cxgb_setup_tc_flower(struct net_device *dev,
    struct flow_cls_offload *cls_flower)
{
 switch (cls_flower->command) {
 case 129:
  return cxgb4_tc_flower_replace(dev, cls_flower);
 case 130:
  return cxgb4_tc_flower_destroy(dev, cls_flower);
 case 128:
  return cxgb4_tc_flower_stats(dev, cls_flower);
 default:
  return -EOPNOTSUPP;
 }
}
