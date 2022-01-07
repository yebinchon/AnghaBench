
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct gpmi_transfer {int sgl; int direction; int * cmdbuf; } ;
struct TYPE_2__ {int cur_cs; } ;
struct gpmi_nand_data {int dev; TYPE_1__ nand; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int BF_GPMI_CTRL0_ADDRESS (int ) ;
 int BF_GPMI_CTRL0_COMMAND_MODE (int ) ;
 int BF_GPMI_CTRL0_CS (int,struct gpmi_nand_data*) ;
 int BF_GPMI_CTRL0_LOCK_CS (int ,struct gpmi_nand_data*) ;
 int BF_GPMI_CTRL0_XFER_COUNT (int) ;
 int BM_GPMI_CTRL0_ADDRESS_INCREMENT ;
 int BM_GPMI_CTRL0_WORD_LENGTH ;
 int BV_GPMI_CTRL0_ADDRESS__NAND_CLE ;
 int BV_GPMI_CTRL0_COMMAND_MODE__WRITE ;
 int DMA_MEM_TO_DEV ;
 int DMA_TO_DEVICE ;
 int DMA_TRANS_NONE ;
 int LOCK_CS_ENABLE ;
 int MXS_DMA_CTRL_WAIT4END ;
 int dma_map_sg (int ,int *,int,int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (struct dma_chan*,int *,int,int ,int ) ;
 struct dma_chan* get_dma_chan (struct gpmi_nand_data*) ;
 struct gpmi_transfer* get_next_transfer (struct gpmi_nand_data*) ;
 int memcpy (int *,int const*,int) ;
 struct dma_async_tx_descriptor* mxs_dmaengine_prep_pio (struct dma_chan*,int*,int ,int ,int ) ;
 int sg_init_one (int *,int *,int) ;

__attribute__((used)) static struct dma_async_tx_descriptor *gpmi_chain_command(
 struct gpmi_nand_data *this, u8 cmd, const u8 *addr, int naddr)
{
 struct dma_chan *channel = get_dma_chan(this);
 struct dma_async_tx_descriptor *desc;
 struct gpmi_transfer *transfer;
 int chip = this->nand.cur_cs;
 u32 pio[3];


 pio[0] = BF_GPMI_CTRL0_COMMAND_MODE(BV_GPMI_CTRL0_COMMAND_MODE__WRITE)
  | BM_GPMI_CTRL0_WORD_LENGTH
  | BF_GPMI_CTRL0_CS(chip, this)
  | BF_GPMI_CTRL0_LOCK_CS(LOCK_CS_ENABLE, this)
  | BF_GPMI_CTRL0_ADDRESS(BV_GPMI_CTRL0_ADDRESS__NAND_CLE)
  | BM_GPMI_CTRL0_ADDRESS_INCREMENT
  | BF_GPMI_CTRL0_XFER_COUNT(naddr + 1);
 pio[1] = 0;
 pio[2] = 0;
 desc = mxs_dmaengine_prep_pio(channel, pio, ARRAY_SIZE(pio),
          DMA_TRANS_NONE, 0);
 if (!desc)
  return ((void*)0);

 transfer = get_next_transfer(this);
 if (!transfer)
  return ((void*)0);

 transfer->cmdbuf[0] = cmd;
 if (naddr)
  memcpy(&transfer->cmdbuf[1], addr, naddr);

 sg_init_one(&transfer->sgl, transfer->cmdbuf, naddr + 1);
 dma_map_sg(this->dev, &transfer->sgl, 1, DMA_TO_DEVICE);

 transfer->direction = DMA_TO_DEVICE;

 desc = dmaengine_prep_slave_sg(channel, &transfer->sgl, 1, DMA_MEM_TO_DEV,
           MXS_DMA_CTRL_WAIT4END);
 return desc;
}
