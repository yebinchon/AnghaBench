
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ R1_CURRENT_STATE (int) ;
 int R1_READY_FOR_DATA ;
 scalar_t__ R1_STATE_TRAN ;

__attribute__((used)) static inline bool mmc_blk_in_tran_state(u32 status)
{




 return status & R1_READY_FOR_DATA &&
        (R1_CURRENT_STATE(status) == R1_STATE_TRAN);
}
