
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fw_fid; } ;
struct bnxt {TYPE_1__ pf; int dev; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;

 int bnxt_tc_flower_enabled (struct bnxt*) ;
 int bnxt_tc_setup_flower (struct bnxt*,int ,void*) ;
 int tc_cls_can_offload_and_chain0 (int ,void*) ;

__attribute__((used)) static int bnxt_setup_tc_block_cb(enum tc_setup_type type, void *type_data,
      void *cb_priv)
{
 struct bnxt *bp = cb_priv;

 if (!bnxt_tc_flower_enabled(bp) ||
     !tc_cls_can_offload_and_chain0(bp->dev, type_data))
  return -EOPNOTSUPP;

 switch (type) {
 case 128:
  return bnxt_tc_setup_flower(bp, bp->pf.fw_fid, type_data);
 default:
  return -EOPNOTSUPP;
 }
}
