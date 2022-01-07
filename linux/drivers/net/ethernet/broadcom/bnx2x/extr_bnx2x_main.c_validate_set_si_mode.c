
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct bnx2x {void** mf_config; int mf_mode; } ;
struct TYPE_2__ {int config; int mac_upper; } ;


 int BNX2X_DEV_INFO (char*) ;
 size_t BP_ABS_FUNC (struct bnx2x*) ;
 size_t BP_VN (struct bnx2x*) ;
 void* MF_CFG_RD (struct bnx2x*,int ) ;
 int MULTI_FUNCTION_SI ;
 TYPE_1__* func_mf_config ;

__attribute__((used)) static void validate_set_si_mode(struct bnx2x *bp)
{
 u8 func = BP_ABS_FUNC(bp);
 u32 val;

 val = MF_CFG_RD(bp, func_mf_config[func].mac_upper);


 if (val != 0xffff) {
  bp->mf_mode = MULTI_FUNCTION_SI;
  bp->mf_config[BP_VN(bp)] =
   MF_CFG_RD(bp, func_mf_config[func].config);
 } else
  BNX2X_DEV_INFO("illegal MAC address for SI\n");
}
