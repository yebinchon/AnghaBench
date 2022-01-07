
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int dma_addr; void* addr; } ;
struct TYPE_6__ {int dma_addr; void* addr; } ;
struct tw5864_h264_frame {TYPE_3__ mv; TYPE_1__ vlc; } ;
struct tw5864_dev {size_t h264_buf_w_index; int irqmask; struct tw5864_h264_frame* h264_buf; TYPE_2__* pci; int tasklet; TYPE_4__* inputs; int slock; scalar_t__ h264_buf_r_index; scalar_t__ encoder_busy; } ;
struct TYPE_9__ {int nr; struct tw5864_dev* root; } ;
struct TYPE_7__ {int dev; } ;


 int ENOMEM ;
 int GFP_DMA32 ;
 int GFP_KERNEL ;
 int H264_BUF_CNT ;
 int H264_MV_BUF_SIZE ;
 int H264_VLC_BUF_SIZE ;
 int TW5864_DI_EN ;
 int TW5864_ENC_BUF_PTR_REC1 ;
 int TW5864_FULL_HALF_MODE_SEL ;
 int TW5864_H264EN_BUS0_MAP ;
 int TW5864_H264EN_BUS1_MAP ;
 int TW5864_H264EN_BUS2_MAP ;
 int TW5864_H264EN_BUS3_MAP ;
 int TW5864_H264EN_CH_EN ;
 int TW5864_INDIR_CLK0_SEL ;
 int TW5864_INDIR_DDRA_DLL_CLK90_SEL ;
 int TW5864_INDIR_DDRA_DLL_DQS_SEL0 ;
 int TW5864_INDIR_DDRA_DLL_DQS_SEL1 ;
 int TW5864_INDIR_DDRB_DLL_CLK90_SEL ;
 int TW5864_INDIR_DDRB_DLL_DQS_SEL0 ;
 int TW5864_INDIR_DDRB_DLL_DQS_SEL1 ;
 int TW5864_INDIR_PV_VD_CK_POL ;
 int TW5864_INDIR_PV_VD_CK_POL_VD (int) ;
 int TW5864_INDIR_RESET ;
 int TW5864_INDIR_RESET_DLL ;
 int TW5864_INDIR_RESET_MUX_CORE ;
 int TW5864_INDIR_RESET_VD ;
 int TW5864_INDIR_VD_108_POL ;
 int TW5864_INDIR_VD_108_POL_BOTH ;
 int TW5864_INPUTS ;
 int TW5864_INTERLACING ;
 int TW5864_INTR_TIMER ;
 int TW5864_INTR_VLC_DONE ;
 int TW5864_MASTER_ENB_REG ;
 int TW5864_MVD_VLC_MAST_ENB ;
 int TW5864_MV_STREAM_BASE_ADDR ;
 int TW5864_PCI_INTR_CTL ;
 int TW5864_PCI_INTTM_SCALE ;
 int TW5864_PCI_MAST_ENB ;
 int TW5864_PCI_VLC_INTR_ENB ;
 int TW5864_SEN_EN_CH ;
 int TW5864_TIMER_INTR_ENB ;
 int TW5864_VLC_STREAM_BASE_ADDR ;
 int dev_err (int *,char*) ;
 void* dma_alloc_coherent (int *,int ,int*,int) ;
 int dma_free_coherent (int *,int ,void*,int) ;
 int msleep (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int tasklet_kill (int *) ;
 int tw5864_encoder_tables_upload (struct tw5864_dev*) ;
 int tw5864_handle_frame_task ;
 int tw5864_irqmask_apply (struct tw5864_dev*) ;
 int tw5864_video_input_fini (TYPE_4__*) ;
 int tw5864_video_input_init (TYPE_4__*,int) ;
 int tw_indir_writeb (int ,int) ;
 int tw_writel (int ,int) ;

int tw5864_video_init(struct tw5864_dev *dev, int *video_nr)
{
 int i;
 int ret;
 unsigned long flags;
 int last_dma_allocated = -1;
 int last_input_nr_registered = -1;

 for (i = 0; i < H264_BUF_CNT; i++) {
  struct tw5864_h264_frame *frame = &dev->h264_buf[i];

  frame->vlc.addr = dma_alloc_coherent(&dev->pci->dev,
           H264_VLC_BUF_SIZE,
           &frame->vlc.dma_addr,
           GFP_KERNEL | GFP_DMA32);
  if (!frame->vlc.addr) {
   dev_err(&dev->pci->dev, "dma alloc fail\n");
   ret = -ENOMEM;
   goto free_dma;
  }
  frame->mv.addr = dma_alloc_coherent(&dev->pci->dev,
          H264_MV_BUF_SIZE,
          &frame->mv.dma_addr,
          GFP_KERNEL | GFP_DMA32);
  if (!frame->mv.addr) {
   dev_err(&dev->pci->dev, "dma alloc fail\n");
   ret = -ENOMEM;
   dma_free_coherent(&dev->pci->dev, H264_VLC_BUF_SIZE,
       frame->vlc.addr, frame->vlc.dma_addr);
   goto free_dma;
  }
  last_dma_allocated = i;
 }

 tw5864_encoder_tables_upload(dev);



 tw_indir_writeb(TW5864_INDIR_VD_108_POL, TW5864_INDIR_VD_108_POL_BOTH);
 tw_indir_writeb(TW5864_INDIR_CLK0_SEL, 0x00);

 tw_indir_writeb(TW5864_INDIR_DDRA_DLL_DQS_SEL0, 0x02);
 tw_indir_writeb(TW5864_INDIR_DDRA_DLL_DQS_SEL1, 0x02);
 tw_indir_writeb(TW5864_INDIR_DDRA_DLL_CLK90_SEL, 0x02);
 tw_indir_writeb(TW5864_INDIR_DDRB_DLL_DQS_SEL0, 0x02);
 tw_indir_writeb(TW5864_INDIR_DDRB_DLL_DQS_SEL1, 0x02);
 tw_indir_writeb(TW5864_INDIR_DDRB_DLL_CLK90_SEL, 0x02);


 tw_indir_writeb(TW5864_INDIR_RESET, 0);
 tw_indir_writeb(TW5864_INDIR_RESET, TW5864_INDIR_RESET_VD |
   TW5864_INDIR_RESET_DLL | TW5864_INDIR_RESET_MUX_CORE);
 msleep(20);
 tw_writel(TW5864_FULL_HALF_MODE_SEL, 0);

 tw_indir_writeb(TW5864_INDIR_PV_VD_CK_POL,
   TW5864_INDIR_PV_VD_CK_POL_VD(0) |
   TW5864_INDIR_PV_VD_CK_POL_VD(1) |
   TW5864_INDIR_PV_VD_CK_POL_VD(2) |
   TW5864_INDIR_PV_VD_CK_POL_VD(3));

 spin_lock_irqsave(&dev->slock, flags);
 dev->encoder_busy = 0;
 dev->h264_buf_r_index = 0;
 dev->h264_buf_w_index = 0;
 tw_writel(TW5864_VLC_STREAM_BASE_ADDR,
    dev->h264_buf[dev->h264_buf_w_index].vlc.dma_addr);
 tw_writel(TW5864_MV_STREAM_BASE_ADDR,
    dev->h264_buf[dev->h264_buf_w_index].mv.dma_addr);
 spin_unlock_irqrestore(&dev->slock, flags);

 tw_writel(TW5864_SEN_EN_CH, 0x000f);
 tw_writel(TW5864_H264EN_CH_EN, 0x000f);

 tw_writel(TW5864_H264EN_BUS0_MAP, 0x00000000);
 tw_writel(TW5864_H264EN_BUS1_MAP, 0x00001111);
 tw_writel(TW5864_H264EN_BUS2_MAP, 0x00002222);
 tw_writel(TW5864_H264EN_BUS3_MAP, 0x00003333);
 tw_writel(TW5864_ENC_BUF_PTR_REC1, 0x00ff);
 tw_writel(TW5864_PCI_INTTM_SCALE, 0);

 tw_writel(TW5864_INTERLACING, TW5864_DI_EN);
 tw_writel(TW5864_MASTER_ENB_REG, TW5864_PCI_VLC_INTR_ENB);
 tw_writel(TW5864_PCI_INTR_CTL,
    TW5864_TIMER_INTR_ENB | TW5864_PCI_MAST_ENB |
    TW5864_MVD_VLC_MAST_ENB);

 dev->irqmask |= TW5864_INTR_VLC_DONE | TW5864_INTR_TIMER;
 tw5864_irqmask_apply(dev);

 tasklet_init(&dev->tasklet, tw5864_handle_frame_task,
       (unsigned long)dev);

 for (i = 0; i < TW5864_INPUTS; i++) {
  dev->inputs[i].root = dev;
  dev->inputs[i].nr = i;
  ret = tw5864_video_input_init(&dev->inputs[i], video_nr[i]);
  if (ret)
   goto fini_video_inputs;
  last_input_nr_registered = i;
 }

 return 0;

fini_video_inputs:
 for (i = last_input_nr_registered; i >= 0; i--)
  tw5864_video_input_fini(&dev->inputs[i]);

 tasklet_kill(&dev->tasklet);

free_dma:
 for (i = last_dma_allocated; i >= 0; i--) {
  dma_free_coherent(&dev->pci->dev, H264_VLC_BUF_SIZE,
      dev->h264_buf[i].vlc.addr,
      dev->h264_buf[i].vlc.dma_addr);
  dma_free_coherent(&dev->pci->dev, H264_MV_BUF_SIZE,
      dev->h264_buf[i].mv.addr,
      dev->h264_buf[i].mv.dma_addr);
 }

 return ret;
}
