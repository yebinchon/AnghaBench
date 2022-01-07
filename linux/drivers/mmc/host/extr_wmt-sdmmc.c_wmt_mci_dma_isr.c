
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wmt_mci_priv {scalar_t__ comp_cmd; int comp_dma; TYPE_2__* req; int dev; scalar_t__ sdmmc_base; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {int error; } ;


 int DMA_CCR_EVT_SUCCESS ;
 int ETIMEDOUT ;
 int IRQ_HANDLED ;
 scalar_t__ SDDMA_CCR ;
 int complete (int ) ;
 scalar_t__ completion_done (scalar_t__) ;
 int dev_err (int ,char*,int) ;
 int readl (scalar_t__) ;
 int wmt_complete_data_request (struct wmt_mci_priv*) ;
 int wmt_mci_disable_dma (struct wmt_mci_priv*) ;

__attribute__((used)) static irqreturn_t wmt_mci_dma_isr(int irq_num, void *data)
{
 struct wmt_mci_priv *priv;

 int status;

 priv = (struct wmt_mci_priv *)data;

 status = readl(priv->sdmmc_base + SDDMA_CCR) & 0x0F;

 if (status != DMA_CCR_EVT_SUCCESS) {
  dev_err(priv->dev, "DMA Error: Status = %d\n", status);
  priv->req->data->error = -ETIMEDOUT;
  complete(priv->comp_dma);
  return IRQ_HANDLED;
 }

 priv->req->data->error = 0;

 wmt_mci_disable_dma(priv);

 complete(priv->comp_dma);

 if (priv->comp_cmd) {
  if (completion_done(priv->comp_cmd)) {





   wmt_complete_data_request(priv);
  }
 }

 return IRQ_HANDLED;
}
