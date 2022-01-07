
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct frame_buffer {TYPE_1__* p_dma_desc; } ;
struct TYPE_4__ {int frate; } ;
struct atmel_isi {int enable_preview_path; TYPE_2__ pdata; int dev; } ;
struct TYPE_3__ {scalar_t__ fbd_phys; } ;


 int ISI_CFG1 ;
 int ISI_CFG1_DISCR ;
 int ISI_CFG1_FRATE_DIV_MASK ;
 int ISI_CTRL ;
 int ISI_CTRL_CDC ;
 int ISI_CTRL_EN ;
 int ISI_DMA_CHER ;
 int ISI_DMA_CHSR_C_CH ;
 int ISI_DMA_CHSR_P_CH ;
 int ISI_DMA_CTRL_DONE ;
 int ISI_DMA_CTRL_FETCH ;
 int ISI_DMA_C_CTRL ;
 int ISI_DMA_C_DSCR ;
 int ISI_DMA_P_CTRL ;
 int ISI_DMA_P_DSCR ;
 int ISI_INTEN ;
 int ISI_SR_CXFR_DONE ;
 int ISI_SR_PXFR_DONE ;
 int ISI_STATUS ;
 int dev_err (int ,char*) ;
 int isi_readl (struct atmel_isi*,int ) ;
 int isi_writel (struct atmel_isi*,int ,int) ;

__attribute__((used)) static void start_dma(struct atmel_isi *isi, struct frame_buffer *buffer)
{
 u32 ctrl, cfg1;

 cfg1 = isi_readl(isi, ISI_CFG1);

 isi_writel(isi, ISI_INTEN,
   ISI_SR_CXFR_DONE | ISI_SR_PXFR_DONE);


 if (!isi->enable_preview_path) {
  if (isi_readl(isi, ISI_STATUS) & ISI_CTRL_CDC) {
   dev_err(isi->dev, "Already in frame handling.\n");
   return;
  }

  isi_writel(isi, ISI_DMA_C_DSCR,
    (u32)buffer->p_dma_desc->fbd_phys);
  isi_writel(isi, ISI_DMA_C_CTRL,
    ISI_DMA_CTRL_FETCH | ISI_DMA_CTRL_DONE);
  isi_writel(isi, ISI_DMA_CHER, ISI_DMA_CHSR_C_CH);
 } else {
  isi_writel(isi, ISI_DMA_P_DSCR,
    (u32)buffer->p_dma_desc->fbd_phys);
  isi_writel(isi, ISI_DMA_P_CTRL,
    ISI_DMA_CTRL_FETCH | ISI_DMA_CTRL_DONE);
  isi_writel(isi, ISI_DMA_CHER, ISI_DMA_CHSR_P_CH);
 }

 cfg1 &= ~ISI_CFG1_FRATE_DIV_MASK;

 cfg1 |= isi->pdata.frate | ISI_CFG1_DISCR;


 ctrl = ISI_CTRL_EN;

 if (!isi->enable_preview_path)
  ctrl |= ISI_CTRL_CDC;

 isi_writel(isi, ISI_CTRL, ctrl);
 isi_writel(isi, ISI_CFG1, cfg1);
}
