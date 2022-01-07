
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iavf_adapter {int dummy; } ;
struct TYPE_2__ {scalar_t__ chain_index; } ;
struct flow_cls_offload {int command; TYPE_1__ common; } ;


 int EOPNOTSUPP ;



 int iavf_configure_clsflower (struct iavf_adapter*,struct flow_cls_offload*) ;
 int iavf_delete_clsflower (struct iavf_adapter*,struct flow_cls_offload*) ;

__attribute__((used)) static int iavf_setup_tc_cls_flower(struct iavf_adapter *adapter,
        struct flow_cls_offload *cls_flower)
{
 if (cls_flower->common.chain_index)
  return -EOPNOTSUPP;

 switch (cls_flower->command) {
 case 129:
  return iavf_configure_clsflower(adapter, cls_flower);
 case 130:
  return iavf_delete_clsflower(adapter, cls_flower);
 case 128:
  return -EOPNOTSUPP;
 default:
  return -EOPNOTSUPP;
 }
}
