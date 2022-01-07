
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int olinfo_status; } ;
union ixgbe_adv_tx_desc {TYPE_1__ read; } ;
typedef int u32 ;
typedef int __le32 ;


 unsigned int IXGBE_ADVTXD_CC ;
 unsigned int IXGBE_ADVTXD_IDX_SHIFT ;
 unsigned int IXGBE_ADVTXD_PAYLEN_SHIFT ;
 unsigned int IXGBE_ADVTXD_POPTS_IPSEC ;
 unsigned int IXGBE_ADVTXD_POPTS_IXSM ;
 unsigned int IXGBE_ADVTXD_POPTS_TXSM ;
 int IXGBE_TX_FLAGS_CSUM ;
 int IXGBE_TX_FLAGS_IPSEC ;
 int IXGBE_TX_FLAGS_IPV4 ;
 int IXGBE_TX_FLAGS_TSO ;
 int cpu_to_le32 (unsigned int) ;

__attribute__((used)) static void ixgbevf_tx_olinfo_status(union ixgbe_adv_tx_desc *tx_desc,
         u32 tx_flags, unsigned int paylen)
{
 __le32 olinfo_status = cpu_to_le32(paylen << IXGBE_ADVTXD_PAYLEN_SHIFT);


 if (tx_flags & IXGBE_TX_FLAGS_CSUM)
  olinfo_status |= cpu_to_le32(IXGBE_ADVTXD_POPTS_TXSM);


 if (tx_flags & IXGBE_TX_FLAGS_IPV4)
  olinfo_status |= cpu_to_le32(IXGBE_ADVTXD_POPTS_IXSM);


 if (tx_flags & IXGBE_TX_FLAGS_IPSEC)
  olinfo_status |= cpu_to_le32(IXGBE_ADVTXD_POPTS_IPSEC);


 if (tx_flags & (IXGBE_TX_FLAGS_TSO | IXGBE_TX_FLAGS_IPSEC))
  olinfo_status |= cpu_to_le32(1u << IXGBE_ADVTXD_IDX_SHIFT);




 olinfo_status |= cpu_to_le32(IXGBE_ADVTXD_CC);

 tx_desc->read.olinfo_status = olinfo_status;
}
