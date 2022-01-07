
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_dev {int dummy; } ;
struct flow_cls_offload {int command; int cookie; } ;
typedef int __be16 ;


 int EOPNOTSUPP ;


 int qede_add_tc_flower_fltr (struct qede_dev*,int ,struct flow_cls_offload*) ;
 int qede_delete_flow_filter (struct qede_dev*,int ) ;

__attribute__((used)) static int
qede_set_flower(struct qede_dev *edev, struct flow_cls_offload *f,
  __be16 proto)
{
 switch (f->command) {
 case 128:
  return qede_add_tc_flower_fltr(edev, proto, f);
 case 129:
  return qede_delete_flow_filter(edev, f->cookie);
 default:
  return -EOPNOTSUPP;
 }
}
