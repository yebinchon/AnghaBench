
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int olinfo_status; } ;
union igc_adv_tx_desc {TYPE_1__ read; } ;
typedef int u32 ;
struct igc_ring {int dummy; } ;


 unsigned int IGC_ADVTXD_PAYLEN_SHIFT ;
 int IGC_TXD_POPTS_IXSM ;
 int IGC_TXD_POPTS_TXSM ;
 int IGC_TX_FLAGS_CSUM ;
 int IGC_TX_FLAGS_IPV4 ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static void igc_tx_olinfo_status(struct igc_ring *tx_ring,
     union igc_adv_tx_desc *tx_desc,
     u32 tx_flags, unsigned int paylen)
{
 u32 olinfo_status = paylen << IGC_ADVTXD_PAYLEN_SHIFT;


 olinfo_status |= (tx_flags & IGC_TX_FLAGS_CSUM) *
     ((IGC_TXD_POPTS_TXSM << 8) /
     IGC_TX_FLAGS_CSUM);


 olinfo_status |= (tx_flags & IGC_TX_FLAGS_IPV4) *
     (((IGC_TXD_POPTS_IXSM << 8)) /
     IGC_TX_FLAGS_IPV4);

 tx_desc->read.olinfo_status = cpu_to_le32(olinfo_status);
}
