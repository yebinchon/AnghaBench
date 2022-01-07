
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2 {int dummy; } ;


 int BNX2_NVM_ACCESS_ENABLE ;
 int BNX2_NVM_ACCESS_ENABLE_EN ;
 int BNX2_NVM_ACCESS_ENABLE_WR_EN ;
 int BNX2_RD (struct bnx2*,int ) ;
 int BNX2_WR (struct bnx2*,int ,int) ;

__attribute__((used)) static void
bnx2_disable_nvram_access(struct bnx2 *bp)
{
 u32 val;

 val = BNX2_RD(bp, BNX2_NVM_ACCESS_ENABLE);

 BNX2_WR(bp, BNX2_NVM_ACCESS_ENABLE,
  val & ~(BNX2_NVM_ACCESS_ENABLE_EN |
   BNX2_NVM_ACCESS_ENABLE_WR_EN));
}
