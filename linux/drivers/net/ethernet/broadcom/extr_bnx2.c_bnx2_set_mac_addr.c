
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bnx2 {int dummy; } ;


 scalar_t__ BNX2_EMAC_MAC_MATCH0 ;
 scalar_t__ BNX2_EMAC_MAC_MATCH1 ;
 int BNX2_WR (struct bnx2*,scalar_t__,int) ;

__attribute__((used)) static void
bnx2_set_mac_addr(struct bnx2 *bp, u8 *mac_addr, u32 pos)
{
 u32 val;

 val = (mac_addr[0] << 8) | mac_addr[1];

 BNX2_WR(bp, BNX2_EMAC_MAC_MATCH0 + (pos * 8), val);

 val = (mac_addr[2] << 24) | (mac_addr[3] << 16) |
  (mac_addr[4] << 8) | mac_addr[5];

 BNX2_WR(bp, BNX2_EMAC_MAC_MATCH1 + (pos * 8), val);
}
