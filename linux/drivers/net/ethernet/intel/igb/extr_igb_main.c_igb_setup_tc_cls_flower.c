
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igb_adapter {int dummy; } ;
struct flow_cls_offload {int command; } ;


 int EOPNOTSUPP ;



 int igb_configure_clsflower (struct igb_adapter*,struct flow_cls_offload*) ;
 int igb_delete_clsflower (struct igb_adapter*,struct flow_cls_offload*) ;

__attribute__((used)) static int igb_setup_tc_cls_flower(struct igb_adapter *adapter,
       struct flow_cls_offload *cls_flower)
{
 switch (cls_flower->command) {
 case 129:
  return igb_configure_clsflower(adapter, cls_flower);
 case 130:
  return igb_delete_clsflower(adapter, cls_flower);
 case 128:
  return -EOPNOTSUPP;
 default:
  return -EOPNOTSUPP;
 }
}
