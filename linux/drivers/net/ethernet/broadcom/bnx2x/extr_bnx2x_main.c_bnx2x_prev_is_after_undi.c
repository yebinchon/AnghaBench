
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 int BNX2X_DEV_INFO (char*) ;
 int DORQ_REG_NORM_CID_OFST ;
 int MISC_REGISTERS_RESET_REG_1_RST_DORQ ;
 int MISC_REG_RESET_REG_1 ;
 int REG_RD (struct bnx2x*,int ) ;

__attribute__((used)) static bool bnx2x_prev_is_after_undi(struct bnx2x *bp)
{



 if (!(REG_RD(bp, MISC_REG_RESET_REG_1) &
     MISC_REGISTERS_RESET_REG_1_RST_DORQ))
  return 0;

 if (REG_RD(bp, DORQ_REG_NORM_CID_OFST) == 0x7) {
  BNX2X_DEV_INFO("UNDI previously loaded\n");
  return 1;
 }

 return 0;
}
