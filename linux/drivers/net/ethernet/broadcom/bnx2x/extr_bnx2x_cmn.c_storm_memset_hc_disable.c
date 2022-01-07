
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct bnx2x {int dummy; } ;


 int BAR_CSTRORM_INTMEM ;
 int CSTORM_STATUS_BLOCK_DATA_FLAGS_OFFSET (int ,int) ;
 int DP (int ,char*,int,int ,int,int) ;
 int HC_INDEX_DATA_HC_ENABLED ;
 int HC_INDEX_DATA_HC_ENABLED_SHIFT ;
 int NETIF_MSG_IFUP ;
 int REG_RD8 (struct bnx2x*,int) ;
 int REG_WR8 (struct bnx2x*,int,int) ;

__attribute__((used)) static void storm_memset_hc_disable(struct bnx2x *bp, u8 port,
        u16 fw_sb_id, u8 sb_index,
        u8 disable)
{
 u32 enable_flag = disable ? 0 : (1 << HC_INDEX_DATA_HC_ENABLED_SHIFT);
 u32 addr = BAR_CSTRORM_INTMEM +
     CSTORM_STATUS_BLOCK_DATA_FLAGS_OFFSET(fw_sb_id, sb_index);
 u8 flags = REG_RD8(bp, addr);

 flags &= ~HC_INDEX_DATA_HC_ENABLED;
 flags |= enable_flag;
 REG_WR8(bp, addr, flags);
 DP(NETIF_MSG_IFUP,
    "port %x fw_sb_id %d sb_index %d disable %d\n",
    port, fw_sb_id, sb_index, disable);
}
