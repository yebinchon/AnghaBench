
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {int dir; } ;
struct bnxt_tc_flow {TYPE_1__ l2_key; } ;
struct TYPE_4__ {scalar_t__ fw_fid; } ;
struct bnxt {TYPE_2__ pf; } ;


 int BNXT_DIR_RX ;
 int BNXT_DIR_TX ;

__attribute__((used)) static void bnxt_tc_set_flow_dir(struct bnxt *bp, struct bnxt_tc_flow *flow,
     u16 src_fid)
{
 flow->l2_key.dir = (bp->pf.fw_fid == src_fid) ? BNXT_DIR_RX : BNXT_DIR_TX;
}
