
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct flow_cls_offload {int command; } ;
struct bnxt {int dummy; } ;


 int EOPNOTSUPP ;



 int bnxt_tc_add_flow (struct bnxt*,int ,struct flow_cls_offload*) ;
 int bnxt_tc_del_flow (struct bnxt*,struct flow_cls_offload*) ;
 int bnxt_tc_get_flow_stats (struct bnxt*,struct flow_cls_offload*) ;

int bnxt_tc_setup_flower(struct bnxt *bp, u16 src_fid,
    struct flow_cls_offload *cls_flower)
{
 switch (cls_flower->command) {
 case 129:
  return bnxt_tc_add_flow(bp, src_fid, cls_flower);
 case 130:
  return bnxt_tc_del_flow(bp, cls_flower);
 case 128:
  return bnxt_tc_get_flow_stats(bp, cls_flower);
 default:
  return -EOPNOTSUPP;
 }
}
