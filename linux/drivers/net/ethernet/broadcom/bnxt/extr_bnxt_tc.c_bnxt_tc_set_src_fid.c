
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int flags; } ;
struct bnxt_tc_flow {int src_fid; TYPE_1__ actions; } ;
struct TYPE_4__ {int fw_fid; } ;
struct bnxt {TYPE_2__ pf; } ;


 int BNXT_TC_ACTION_FLAG_TUNNEL_DECAP ;

__attribute__((used)) static void bnxt_tc_set_src_fid(struct bnxt *bp, struct bnxt_tc_flow *flow,
    u16 src_fid)
{
 if (flow->actions.flags & BNXT_TC_ACTION_FLAG_TUNNEL_DECAP)
  flow->src_fid = bp->pf.fw_fid;
 else
  flow->src_fid = src_fid;
}
