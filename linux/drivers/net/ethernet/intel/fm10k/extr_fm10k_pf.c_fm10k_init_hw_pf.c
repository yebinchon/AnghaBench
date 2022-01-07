
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_6__ {int total_vfs; } ;
struct TYPE_5__ {int default_vid; int max_queues; void* itr_scale; } ;
struct TYPE_4__ {int speed; } ;
struct fm10k_hw {TYPE_3__ iov; TYPE_2__ mac; TYPE_1__ bus; } ;
typedef int s32 ;


 int FM10K_DGLORTDEC (int) ;
 int FM10K_DGLORTMAP (int) ;
 int FM10K_DGLORTMAP_ANY ;
 int FM10K_DGLORTMAP_NONE ;
 int FM10K_DGLORT_COUNT ;
 int FM10K_DMA_CTRL ;
 int FM10K_DMA_CTRL_32_DESC ;
 int FM10K_DMA_CTRL_MAX_HOLD_1US_GEN1 ;
 int FM10K_DMA_CTRL_MAX_HOLD_1US_GEN2 ;
 int FM10K_DMA_CTRL_MAX_HOLD_1US_GEN3 ;
 int FM10K_DMA_CTRL_MINMSS_64 ;
 int FM10K_DMA_CTRL_RX_DESC_SIZE ;
 int FM10K_DMA_CTRL_RX_ENABLE ;
 int FM10K_DMA_CTRL_TX_ENABLE ;
 int FM10K_DTXTCPFLGH ;
 int FM10K_DTXTCPFLGL ;
 int FM10K_INT_CTRL ;
 int FM10K_INT_CTRL_ENABLEMODERATOR ;
 int FM10K_ITR2 (int) ;
 int FM10K_ITR_REG_COUNT_PF ;
 int FM10K_MAX_QUEUES ;
 int FM10K_MAX_QUEUES_PF ;
 void* FM10K_TDLEN_ITR_SCALE_GEN1 ;
 void* FM10K_TDLEN_ITR_SCALE_GEN2 ;
 void* FM10K_TDLEN_ITR_SCALE_GEN3 ;
 int FM10K_TPH_RXCTRL (int) ;
 int FM10K_TPH_RXCTRL_DATA_WROEN ;
 int FM10K_TPH_RXCTRL_DESC_RROEN ;
 int FM10K_TPH_RXCTRL_DESC_TPHEN ;
 int FM10K_TPH_RXCTRL_HDR_WROEN ;
 int FM10K_TPH_TXCTRL (int) ;
 int FM10K_TPH_TXCTRL_DATA_RROEN ;
 int FM10K_TPH_TXCTRL_DESC_RROEN ;
 int FM10K_TPH_TXCTRL_DESC_TPHEN ;
 int FM10K_TPH_TXCTRL_DESC_WROEN ;
 int FM10K_TQDLOC (int) ;
 int FM10K_TQDLOC_BASE_32_DESC ;
 int FM10K_TQDLOC_SIZE_32_DESC ;
 int FM10K_TSO_FLAGS_HI ;
 int FM10K_TSO_FLAGS_LOW ;
 int FM10K_TXQCTL (int) ;
 int FM10K_TXQCTL_PF ;
 int FM10K_TXQCTL_UNLIMITED_BW ;
 int FM10K_TXQCTL_VID_SHIFT ;



 int fm10k_dglort_default ;
 scalar_t__ fm10k_is_ari_hierarchy_pf (struct fm10k_hw*) ;
 int fm10k_write_reg (struct fm10k_hw*,int ,int) ;

__attribute__((used)) static s32 fm10k_init_hw_pf(struct fm10k_hw *hw)
{
 u32 dma_ctrl, txqctl;
 u16 i;


 fm10k_write_reg(hw, FM10K_DGLORTDEC(fm10k_dglort_default), 0);
 fm10k_write_reg(hw, FM10K_DGLORTMAP(fm10k_dglort_default),
   FM10K_DGLORTMAP_ANY);


 for (i = 1; i < FM10K_DGLORT_COUNT; i++)
  fm10k_write_reg(hw, FM10K_DGLORTMAP(i), FM10K_DGLORTMAP_NONE);


 fm10k_write_reg(hw, FM10K_ITR2(0), 0);


 fm10k_write_reg(hw, FM10K_ITR2(FM10K_ITR_REG_COUNT_PF), 0);


 for (i = 1; i < FM10K_ITR_REG_COUNT_PF; i++)
  fm10k_write_reg(hw, FM10K_ITR2(i), i - 1);


 fm10k_write_reg(hw, FM10K_INT_CTRL, FM10K_INT_CTRL_ENABLEMODERATOR);


 txqctl = FM10K_TXQCTL_PF | FM10K_TXQCTL_UNLIMITED_BW |
   (hw->mac.default_vid << FM10K_TXQCTL_VID_SHIFT);

 for (i = 0; i < FM10K_MAX_QUEUES; i++) {

  fm10k_write_reg(hw, FM10K_TQDLOC(i),
    (i * FM10K_TQDLOC_BASE_32_DESC) |
    FM10K_TQDLOC_SIZE_32_DESC);
  fm10k_write_reg(hw, FM10K_TXQCTL(i), txqctl);


  fm10k_write_reg(hw, FM10K_TPH_TXCTRL(i),
    FM10K_TPH_TXCTRL_DESC_TPHEN |
    FM10K_TPH_TXCTRL_DESC_RROEN |
    FM10K_TPH_TXCTRL_DESC_WROEN |
    FM10K_TPH_TXCTRL_DATA_RROEN);
  fm10k_write_reg(hw, FM10K_TPH_RXCTRL(i),
    FM10K_TPH_RXCTRL_DESC_TPHEN |
    FM10K_TPH_RXCTRL_DESC_RROEN |
    FM10K_TPH_RXCTRL_DATA_WROEN |
    FM10K_TPH_RXCTRL_HDR_WROEN);
 }




 switch (hw->bus.speed) {
 case 130:
  dma_ctrl = FM10K_DMA_CTRL_MAX_HOLD_1US_GEN1;
  hw->mac.itr_scale = FM10K_TDLEN_ITR_SCALE_GEN1;
  break;
 case 129:
  dma_ctrl = FM10K_DMA_CTRL_MAX_HOLD_1US_GEN2;
  hw->mac.itr_scale = FM10K_TDLEN_ITR_SCALE_GEN2;
  break;
 case 128:
  dma_ctrl = FM10K_DMA_CTRL_MAX_HOLD_1US_GEN3;
  hw->mac.itr_scale = FM10K_TDLEN_ITR_SCALE_GEN3;
  break;
 default:
  dma_ctrl = 0;

  hw->mac.itr_scale = FM10K_TDLEN_ITR_SCALE_GEN3;
  break;
 }


 fm10k_write_reg(hw, FM10K_DTXTCPFLGL, FM10K_TSO_FLAGS_LOW);
 fm10k_write_reg(hw, FM10K_DTXTCPFLGH, FM10K_TSO_FLAGS_HI);






 dma_ctrl |= FM10K_DMA_CTRL_TX_ENABLE | FM10K_DMA_CTRL_RX_ENABLE |
      FM10K_DMA_CTRL_RX_DESC_SIZE | FM10K_DMA_CTRL_MINMSS_64 |
      FM10K_DMA_CTRL_32_DESC;

 fm10k_write_reg(hw, FM10K_DMA_CTRL, dma_ctrl);


 hw->mac.max_queues = FM10K_MAX_QUEUES_PF;


 hw->iov.total_vfs = fm10k_is_ari_hierarchy_pf(hw) ? 64 : 7;

 return 0;
}
