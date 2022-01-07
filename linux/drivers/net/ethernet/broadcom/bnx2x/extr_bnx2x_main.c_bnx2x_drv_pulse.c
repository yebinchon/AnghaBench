
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2x {int fw_drv_pulse_wr_seq; } ;
struct TYPE_2__ {int drv_pulse_mb; } ;


 size_t BP_FW_MB_IDX (struct bnx2x*) ;
 int SHMEM_WR (struct bnx2x*,int ,int ) ;
 TYPE_1__* func_mb ;

void bnx2x_drv_pulse(struct bnx2x *bp)
{
 SHMEM_WR(bp, func_mb[BP_FW_MB_IDX(bp)].drv_pulse_mb,
   bp->fw_drv_pulse_wr_seq);
}
