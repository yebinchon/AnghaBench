
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int CSUM_HAS_PSEUDO_HDR_F ;
 int L1_CACHE_BYTES ;
 int PAGE_SIZE ;
 int PKTSHIFT_M ;
 int PKTSHIFT_V (int) ;
 int SGE_CONTROL_A ;
 int TP_INGRESS_CONFIG_A ;
 int dev_err (int *,char*,int) ;
 int rx_dma_offset ;
 int t4_fixup_host_params (struct adapter*,int ,int ) ;
 int t4_set_reg_field (struct adapter*,int ,int ,int ) ;
 int t4_tp_wr_bits_indirect (struct adapter*,int ,int ,int ) ;

__attribute__((used)) static int adap_init0_tweaks(struct adapter *adapter)
{





 t4_fixup_host_params(adapter, PAGE_SIZE, L1_CACHE_BYTES);




 if (rx_dma_offset != 2 && rx_dma_offset != 0) {
  dev_err(&adapter->pdev->dev,
   "Ignoring illegal rx_dma_offset=%d, using 2\n",
   rx_dma_offset);
  rx_dma_offset = 2;
 }
 t4_set_reg_field(adapter, SGE_CONTROL_A,
    PKTSHIFT_V(PKTSHIFT_M),
    PKTSHIFT_V(rx_dma_offset));





 t4_tp_wr_bits_indirect(adapter, TP_INGRESS_CONFIG_A,
          CSUM_HAS_PSEUDO_HDR_F, 0);

 return 0;
}
