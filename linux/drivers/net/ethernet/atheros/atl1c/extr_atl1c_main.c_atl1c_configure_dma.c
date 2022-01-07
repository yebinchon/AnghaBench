
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atl1c_hw {int dmar_block; } ;
struct atl1c_adapter {struct atl1c_hw hw; } ;


 int AT_WRITE_REG (struct atl1c_hw*,int ,int) ;
 int DMA_CTRL_RDLY_CNT ;
 int DMA_CTRL_RDLY_CNT_DEF ;
 int DMA_CTRL_RORDER_MODE ;
 int DMA_CTRL_RORDER_MODE_OUT ;
 int DMA_CTRL_RREQ_BLEN ;
 int DMA_CTRL_RREQ_PRI_DATA ;
 int DMA_CTRL_WDLY_CNT ;
 int DMA_CTRL_WDLY_CNT_DEF ;
 int FIELDX (int ,int ) ;
 int REG_DMA_CTRL ;

__attribute__((used)) static void atl1c_configure_dma(struct atl1c_adapter *adapter)
{
 struct atl1c_hw *hw = &adapter->hw;
 u32 dma_ctrl_data;

 dma_ctrl_data = FIELDX(DMA_CTRL_RORDER_MODE, DMA_CTRL_RORDER_MODE_OUT) |
  DMA_CTRL_RREQ_PRI_DATA |
  FIELDX(DMA_CTRL_RREQ_BLEN, hw->dmar_block) |
  FIELDX(DMA_CTRL_WDLY_CNT, DMA_CTRL_WDLY_CNT_DEF) |
  FIELDX(DMA_CTRL_RDLY_CNT, DMA_CTRL_RDLY_CNT_DEF);

 AT_WRITE_REG(hw, REG_DMA_CTRL, dma_ctrl_data);
}
