
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int cur_cs; } ;
struct gpmi_nand_data {TYPE_1__ nand; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;


 int BF_GPMI_CTRL0_ADDRESS (int ) ;
 int BF_GPMI_CTRL0_COMMAND_MODE (int ) ;
 int BF_GPMI_CTRL0_CS (int ,struct gpmi_nand_data*) ;
 int BF_GPMI_CTRL0_LOCK_CS (int ,struct gpmi_nand_data*) ;
 int BF_GPMI_CTRL0_XFER_COUNT (int ) ;
 int BM_GPMI_CTRL0_WORD_LENGTH ;
 int BV_GPMI_CTRL0_ADDRESS__NAND_DATA ;
 int BV_GPMI_CTRL0_COMMAND_MODE__WAIT_FOR_READY ;
 int DMA_TRANS_NONE ;
 int LOCK_CS_ENABLE ;
 int MXS_DMA_CTRL_WAIT4END ;
 int MXS_DMA_CTRL_WAIT4RDY ;
 struct dma_chan* get_dma_chan (struct gpmi_nand_data*) ;
 struct dma_async_tx_descriptor* mxs_dmaengine_prep_pio (struct dma_chan*,int*,int,int ,int) ;

__attribute__((used)) static struct dma_async_tx_descriptor *gpmi_chain_wait_ready(
 struct gpmi_nand_data *this)
{
 struct dma_chan *channel = get_dma_chan(this);
 u32 pio[2];

 pio[0] = BF_GPMI_CTRL0_COMMAND_MODE(BV_GPMI_CTRL0_COMMAND_MODE__WAIT_FOR_READY)
  | BM_GPMI_CTRL0_WORD_LENGTH
  | BF_GPMI_CTRL0_CS(this->nand.cur_cs, this)
  | BF_GPMI_CTRL0_LOCK_CS(LOCK_CS_ENABLE, this)
  | BF_GPMI_CTRL0_ADDRESS(BV_GPMI_CTRL0_ADDRESS__NAND_DATA)
  | BF_GPMI_CTRL0_XFER_COUNT(0);
 pio[1] = 0;

 return mxs_dmaengine_prep_pio(channel, pio, 2, DMA_TRANS_NONE,
    MXS_DMA_CTRL_WAIT4END | MXS_DMA_CTRL_WAIT4RDY);
}
