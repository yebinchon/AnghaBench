
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int olinfo_status; } ;
union e1000_adv_tx_desc {TYPE_1__ read; } ;
typedef int u32 ;
struct igb_ring {int reg_idx; int flags; } ;


 unsigned int E1000_ADVTXD_PAYLEN_SHIFT ;
 int E1000_TXD_POPTS_IXSM ;
 int E1000_TXD_POPTS_TXSM ;
 int IGB_RING_FLAG_TX_CTX_IDX ;
 int IGB_SET_FLAG (int,int ,int) ;
 int IGB_TX_FLAGS_CSUM ;
 int IGB_TX_FLAGS_IPV4 ;
 int cpu_to_le32 (int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void igb_tx_olinfo_status(struct igb_ring *tx_ring,
     union e1000_adv_tx_desc *tx_desc,
     u32 tx_flags, unsigned int paylen)
{
 u32 olinfo_status = paylen << E1000_ADVTXD_PAYLEN_SHIFT;


 if (test_bit(IGB_RING_FLAG_TX_CTX_IDX, &tx_ring->flags))
  olinfo_status |= tx_ring->reg_idx << 4;


 olinfo_status |= IGB_SET_FLAG(tx_flags,
          IGB_TX_FLAGS_CSUM,
          (E1000_TXD_POPTS_TXSM << 8));


 olinfo_status |= IGB_SET_FLAG(tx_flags,
          IGB_TX_FLAGS_IPV4,
          (E1000_TXD_POPTS_IXSM << 8));

 tx_desc->read.olinfo_status = cpu_to_le32(olinfo_status);
}
