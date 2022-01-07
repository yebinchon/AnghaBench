
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int as_bitfield; } ;
struct eth_tx_start_bd {TYPE_1__ bd_flags; } ;
struct bnx2x {int dummy; } ;


 int ETH_TX_BD_FLAGS_IPV6 ;
 int ETH_TX_BD_FLAGS_IS_UDP ;
 int ETH_TX_BD_FLAGS_L4_CSUM ;
 int XMIT_CSUM_ENC_V6 ;
 int XMIT_CSUM_TCP ;
 int XMIT_CSUM_V6 ;

__attribute__((used)) static void bnx2x_set_sbd_csum(struct bnx2x *bp, struct sk_buff *skb,
          struct eth_tx_start_bd *tx_start_bd,
          u32 xmit_type)
{
 tx_start_bd->bd_flags.as_bitfield |= ETH_TX_BD_FLAGS_L4_CSUM;

 if (xmit_type & (XMIT_CSUM_ENC_V6 | XMIT_CSUM_V6))
  tx_start_bd->bd_flags.as_bitfield |= ETH_TX_BD_FLAGS_IPV6;

 if (!(xmit_type & XMIT_CSUM_TCP))
  tx_start_bd->bd_flags.as_bitfield |= ETH_TX_BD_FLAGS_IS_UDP;
}
