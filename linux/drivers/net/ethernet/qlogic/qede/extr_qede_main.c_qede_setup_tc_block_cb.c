
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qede_dev {int ndev; } ;
struct TYPE_2__ {int protocol; } ;
struct flow_cls_offload {TYPE_1__ common; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;

 int qede_set_flower (struct qede_dev*,struct flow_cls_offload*,int ) ;
 int tc_cls_can_offload_and_chain0 (int ,void*) ;

__attribute__((used)) static int qede_setup_tc_block_cb(enum tc_setup_type type, void *type_data,
      void *cb_priv)
{
 struct flow_cls_offload *f;
 struct qede_dev *edev = cb_priv;

 if (!tc_cls_can_offload_and_chain0(edev->ndev, type_data))
  return -EOPNOTSUPP;

 switch (type) {
 case 128:
  f = type_data;
  return qede_set_flower(edev, f, f->common.protocol);
 default:
  return -EOPNOTSUPP;
 }
}
