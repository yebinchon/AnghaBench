
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct link_params {int port; int * phy; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*) ;
 scalar_t__ GRCBASE_MISC ;
 size_t INT_PHY ;
 scalar_t__ MISC_REGISTERS_RESET_REG_3_CLEAR ;
 scalar_t__ MISC_REGISTERS_RESET_REG_3_SET ;
 int NETIF_MSG_LINK ;
 int PHY_INIT ;
 int REG_WR (struct bnx2x*,scalar_t__,int) ;
 int XGXS_RESET_BITS ;
 int bnx2x_xgxs_specific_func (int *,struct link_params*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void bnx2x_xgxs_deassert(struct link_params *params)
{
 struct bnx2x *bp = params->bp;
 u8 port;
 u32 val;
 DP(NETIF_MSG_LINK, "bnx2x_xgxs_deassert\n");
 port = params->port;

 val = XGXS_RESET_BITS << (port*16);


 REG_WR(bp, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_3_CLEAR, val);
 udelay(500);
 REG_WR(bp, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_3_SET, val);
 bnx2x_xgxs_specific_func(&params->phy[INT_PHY], params,
     PHY_INIT);
}
