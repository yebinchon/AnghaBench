
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int dma_address; } ;
struct gpmi_transfer {TYPE_2__ sgl; int direction; } ;
struct TYPE_4__ {int cur_cs; } ;
struct gpmi_nand_data {int auxiliary_phys; scalar_t__ bch; TYPE_1__ nand; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int BF_GPMI_CTRL0_ADDRESS (int ) ;
 int BF_GPMI_CTRL0_COMMAND_MODE (int ) ;
 int BF_GPMI_CTRL0_CS (int ,struct gpmi_nand_data*) ;
 int BF_GPMI_CTRL0_LOCK_CS (int ,struct gpmi_nand_data*) ;
 int BF_GPMI_CTRL0_XFER_COUNT (int) ;
 int BF_GPMI_ECCCTRL_BUFFER_MASK (int) ;
 int BF_GPMI_ECCCTRL_ECC_CMD (int ) ;
 int BM_GPMI_CTRL0_WORD_LENGTH ;
 int BM_GPMI_ECCCTRL_ENABLE_ECC ;
 int BV_GPMI_CTRL0_ADDRESS__NAND_DATA ;
 int BV_GPMI_CTRL0_COMMAND_MODE__READ ;
 int BV_GPMI_ECCCTRL_BUFFER_MASK__BCH_AUXONLY ;
 int BV_GPMI_ECCCTRL_BUFFER_MASK__BCH_PAGE ;
 int BV_GPMI_ECCCTRL_ECC_CMD__BCH_DECODE ;
 int DMA_DEV_TO_MEM ;
 int DMA_FROM_DEVICE ;
 int DMA_TRANS_NONE ;
 int LOCK_CS_ENABLE ;
 int MXS_DMA_CTRL_WAIT4END ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (struct dma_chan*,TYPE_2__*,int,int ,int ) ;
 struct dma_chan* get_dma_chan (struct gpmi_nand_data*) ;
 struct gpmi_transfer* get_next_transfer (struct gpmi_nand_data*) ;
 struct dma_async_tx_descriptor* mxs_dmaengine_prep_pio (struct dma_chan*,int*,int ,int ,int ) ;
 int prepare_data_dma (struct gpmi_nand_data*,void*,int,TYPE_2__*,int ) ;

__attribute__((used)) static struct dma_async_tx_descriptor *gpmi_chain_data_read(
 struct gpmi_nand_data *this, void *buf, int raw_len, bool *direct)
{
 struct dma_async_tx_descriptor *desc;
 struct dma_chan *channel = get_dma_chan(this);
 struct gpmi_transfer *transfer;
 u32 pio[6] = {};

 transfer = get_next_transfer(this);
 if (!transfer)
  return ((void*)0);

 transfer->direction = DMA_FROM_DEVICE;

 *direct = prepare_data_dma(this, buf, raw_len, &transfer->sgl,
       DMA_FROM_DEVICE);

 pio[0] = BF_GPMI_CTRL0_COMMAND_MODE(BV_GPMI_CTRL0_COMMAND_MODE__READ)
  | BM_GPMI_CTRL0_WORD_LENGTH
  | BF_GPMI_CTRL0_CS(this->nand.cur_cs, this)
  | BF_GPMI_CTRL0_LOCK_CS(LOCK_CS_ENABLE, this)
  | BF_GPMI_CTRL0_ADDRESS(BV_GPMI_CTRL0_ADDRESS__NAND_DATA)
  | BF_GPMI_CTRL0_XFER_COUNT(raw_len);

 if (this->bch) {
  pio[2] = BM_GPMI_ECCCTRL_ENABLE_ECC
   | BF_GPMI_ECCCTRL_ECC_CMD(BV_GPMI_ECCCTRL_ECC_CMD__BCH_DECODE)
   | BF_GPMI_ECCCTRL_BUFFER_MASK(BV_GPMI_ECCCTRL_BUFFER_MASK__BCH_PAGE
    | BV_GPMI_ECCCTRL_BUFFER_MASK__BCH_AUXONLY);
  pio[3] = raw_len;
  pio[4] = transfer->sgl.dma_address;
  pio[5] = this->auxiliary_phys;
 }

 desc = mxs_dmaengine_prep_pio(channel, pio, ARRAY_SIZE(pio),
          DMA_TRANS_NONE, 0);
 if (!desc)
  return ((void*)0);

 if (!this->bch)
  desc = dmaengine_prep_slave_sg(channel, &transfer->sgl, 1,
          DMA_DEV_TO_MEM,
          MXS_DMA_CTRL_WAIT4END);

 return desc;
}
