
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_5__ {size_t num_of_cos; TYPE_3__* cos_params; } ;
struct TYPE_4__ {TYPE_2__ ets; } ;
struct bnx2x {size_t* prio_to_cos; TYPE_1__ dcbx_port_params; } ;
struct TYPE_6__ {int pri_bitmask; } ;


 size_t BNX2X_MAX_PRIORITY ;
 int BNX2X_MSG_DCB ;
 int BNX2X_SP_RTNL_SETUP_TC ;
 int DP (int ,char*,size_t,size_t) ;
 int bnx2x_schedule_sp_rtnl (struct bnx2x*,int ,int ) ;

__attribute__((used)) static inline void bnx2x_dcbx_update_tc_mapping(struct bnx2x *bp)
{
 u8 prio, cos;
 for (cos = 0; cos < bp->dcbx_port_params.ets.num_of_cos; cos++) {
  for (prio = 0; prio < BNX2X_MAX_PRIORITY; prio++) {
   if (bp->dcbx_port_params.ets.cos_params[cos].pri_bitmask
       & (1 << prio)) {
    bp->prio_to_cos[prio] = cos;
    DP(BNX2X_MSG_DCB,
       "tx_mapping %d --> %d\n", prio, cos);
   }
  }
 }





 bnx2x_schedule_sp_rtnl(bp, BNX2X_SP_RTNL_SETUP_TC, 0);
}
