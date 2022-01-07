
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int olinfo_status; } ;
union ixgbe_adv_tx_desc {TYPE_1__ read; } ;
typedef unsigned int u32 ;


 int IXGBE_ADVTXD_CC ;
 unsigned int IXGBE_ADVTXD_PAYLEN_SHIFT ;
 int IXGBE_ADVTXD_POPTS_IPSEC ;
 int IXGBE_ADVTXD_POPTS_IXSM ;
 int IXGBE_ADVTXD_POPTS_TXSM ;
 unsigned int IXGBE_SET_FLAG (unsigned int,int ,int ) ;
 int IXGBE_TX_FLAGS_CC ;
 int IXGBE_TX_FLAGS_CSUM ;
 int IXGBE_TX_FLAGS_IPSEC ;
 int IXGBE_TX_FLAGS_IPV4 ;
 int cpu_to_le32 (unsigned int) ;

__attribute__((used)) static void ixgbe_tx_olinfo_status(union ixgbe_adv_tx_desc *tx_desc,
       u32 tx_flags, unsigned int paylen)
{
 u32 olinfo_status = paylen << IXGBE_ADVTXD_PAYLEN_SHIFT;


 olinfo_status |= IXGBE_SET_FLAG(tx_flags,
     IXGBE_TX_FLAGS_CSUM,
     IXGBE_ADVTXD_POPTS_TXSM);


 olinfo_status |= IXGBE_SET_FLAG(tx_flags,
     IXGBE_TX_FLAGS_IPV4,
     IXGBE_ADVTXD_POPTS_IXSM);


 olinfo_status |= IXGBE_SET_FLAG(tx_flags,
     IXGBE_TX_FLAGS_IPSEC,
     IXGBE_ADVTXD_POPTS_IPSEC);





 olinfo_status |= IXGBE_SET_FLAG(tx_flags,
     IXGBE_TX_FLAGS_CC,
     IXGBE_ADVTXD_CC);

 tx_desc->read.olinfo_status = cpu_to_le32(olinfo_status);
}
