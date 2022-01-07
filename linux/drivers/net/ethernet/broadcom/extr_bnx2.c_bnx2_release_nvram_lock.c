
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2 {int dummy; } ;


 int BNX2_NVM_SW_ARB ;
 int BNX2_NVM_SW_ARB_ARB_ARB2 ;
 int BNX2_NVM_SW_ARB_ARB_REQ_CLR2 ;
 int BNX2_RD (struct bnx2*,int ) ;
 int BNX2_WR (struct bnx2*,int ,int ) ;
 int EBUSY ;
 int NVRAM_TIMEOUT_COUNT ;
 int udelay (int) ;

__attribute__((used)) static int
bnx2_release_nvram_lock(struct bnx2 *bp)
{
 int j;
 u32 val;


 BNX2_WR(bp, BNX2_NVM_SW_ARB, BNX2_NVM_SW_ARB_ARB_REQ_CLR2);

 for (j = 0; j < NVRAM_TIMEOUT_COUNT; j++) {
  val = BNX2_RD(bp, BNX2_NVM_SW_ARB);
  if (!(val & BNX2_NVM_SW_ARB_ARB_ARB2))
   break;

  udelay(5);
 }

 if (j >= NVRAM_TIMEOUT_COUNT)
  return -EBUSY;

 return 0;
}
