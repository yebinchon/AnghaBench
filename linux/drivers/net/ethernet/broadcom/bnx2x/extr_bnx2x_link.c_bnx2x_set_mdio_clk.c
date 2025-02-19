
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*,int,int) ;
 int EMAC_MDIO_MODE_AUTO_POLL ;
 int EMAC_MDIO_MODE_CLAUSE_45 ;
 int EMAC_MDIO_MODE_CLOCK_CNT ;
 long EMAC_MDIO_MODE_CLOCK_CNT_BITSHIFT ;
 int EMAC_REG_EMAC_MDIO_MODE ;
 int NETIF_MSG_LINK ;
 int REG_RD (struct bnx2x*,int) ;
 int REG_WR (struct bnx2x*,int,int) ;
 scalar_t__ USES_WARPCORE (struct bnx2x*) ;
 int udelay (int) ;

__attribute__((used)) static void bnx2x_set_mdio_clk(struct bnx2x *bp, u32 chip_id,
          u32 emac_base)
{
 u32 new_mode, cur_mode;
 u32 clc_cnt;



 cur_mode = REG_RD(bp, emac_base + EMAC_REG_EMAC_MDIO_MODE);

 if (USES_WARPCORE(bp))
  clc_cnt = 74L << EMAC_MDIO_MODE_CLOCK_CNT_BITSHIFT;
 else
  clc_cnt = 49L << EMAC_MDIO_MODE_CLOCK_CNT_BITSHIFT;

 if (((cur_mode & EMAC_MDIO_MODE_CLOCK_CNT) == clc_cnt) &&
     (cur_mode & (EMAC_MDIO_MODE_CLAUSE_45)))
  return;

 new_mode = cur_mode &
  ~(EMAC_MDIO_MODE_AUTO_POLL | EMAC_MDIO_MODE_CLOCK_CNT);
 new_mode |= clc_cnt;
 new_mode |= (EMAC_MDIO_MODE_CLAUSE_45);

 DP(NETIF_MSG_LINK, "Changing emac_mode from 0x%x to 0x%x\n",
    cur_mode, new_mode);
 REG_WR(bp, emac_base + EMAC_REG_EMAC_MDIO_MODE, new_mode);
 udelay(40);
}
