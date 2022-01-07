
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bnx2x {int dummy; } ;


 int DEFAULT_PHY_DEV_ADDR ;
 int DP (int ,char*) ;
 scalar_t__ GRCBASE_MISC ;
 scalar_t__ MISC_REGISTERS_RESET_REG_3_CLEAR ;
 scalar_t__ MISC_REGISTERS_RESET_REG_3_SET ;
 int NETIF_MSG_LINK ;
 scalar_t__ NIG_REG_SERDES0_CTRL_MD_DEVAD ;
 int REG_WR (struct bnx2x*,scalar_t__,int) ;
 int SERDES_RESET_BITS ;
 int bnx2x_set_serdes_access (struct bnx2x*,int) ;
 int udelay (int) ;

__attribute__((used)) static void bnx2x_serdes_deassert(struct bnx2x *bp, u8 port)
{
 u32 val;

 DP(NETIF_MSG_LINK, "bnx2x_serdes_deassert\n");

 val = SERDES_RESET_BITS << (port*16);


 REG_WR(bp, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_3_CLEAR, val);
 udelay(500);
 REG_WR(bp, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_3_SET, val);

 bnx2x_set_serdes_access(bp, port);

 REG_WR(bp, NIG_REG_SERDES0_CTRL_MD_DEVAD + port*0x10,
        DEFAULT_PHY_DEV_ADDR);
}
