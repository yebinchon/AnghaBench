
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tw5864_input {scalar_t__ frame_gop_seqno; scalar_t__ gop; int slock; int frame_seqno; } ;
struct TYPE_6__ {int dma_addr; } ;
struct TYPE_5__ {int dma_addr; } ;
struct tw5864_h264_frame {int vlc_len; int checksum; scalar_t__ gop_seqno; TYPE_3__ mv; TYPE_2__ vlc; int seqno; int timestamp; struct tw5864_input* input; } ;
struct tw5864_dev {int h264_buf_w_index; int h264_buf_r_index; int slock; scalar_t__ encoder_busy; TYPE_1__* pci; int tasklet; struct tw5864_h264_frame* h264_buf; struct tw5864_input* inputs; } ;
struct TYPE_4__ {int dev; } ;


 int H264_BUF_CNT ;
 int TW5864_DSP ;
 int TW5864_DSP_ENC_CHN ;
 int TW5864_MV_STREAM_BASE_ADDR ;
 int TW5864_PCI_INTR_STATUS ;
 int TW5864_VLC_CRC_REG ;
 int TW5864_VLC_DONE_INTR ;
 int TW5864_VLC_DSP_INTR ;
 int TW5864_VLC_LENGTH ;
 int TW5864_VLC_STREAM_BASE_ADDR ;
 int dev_err (int *,char*,int) ;
 int ktime_get_ns () ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;
 int tw_readl (int ) ;
 int tw_writel (int ,int) ;

__attribute__((used)) static void tw5864_h264_isr(struct tw5864_dev *dev)
{
 int channel = tw_readl(TW5864_DSP) & TW5864_DSP_ENC_CHN;
 struct tw5864_input *input = &dev->inputs[channel];
 int cur_frame_index, next_frame_index;
 struct tw5864_h264_frame *cur_frame, *next_frame;
 unsigned long flags;

 spin_lock_irqsave(&dev->slock, flags);

 cur_frame_index = dev->h264_buf_w_index;
 next_frame_index = (cur_frame_index + 1) % H264_BUF_CNT;
 cur_frame = &dev->h264_buf[cur_frame_index];
 next_frame = &dev->h264_buf[next_frame_index];

 if (next_frame_index != dev->h264_buf_r_index) {
  cur_frame->vlc_len = tw_readl(TW5864_VLC_LENGTH) << 2;
  cur_frame->checksum = tw_readl(TW5864_VLC_CRC_REG);
  cur_frame->input = input;
  cur_frame->timestamp = ktime_get_ns();
  cur_frame->seqno = input->frame_seqno;
  cur_frame->gop_seqno = input->frame_gop_seqno;

  dev->h264_buf_w_index = next_frame_index;
  tasklet_schedule(&dev->tasklet);

  cur_frame = next_frame;

  spin_lock(&input->slock);
  input->frame_seqno++;
  input->frame_gop_seqno++;
  if (input->frame_gop_seqno >= input->gop)
   input->frame_gop_seqno = 0;
  spin_unlock(&input->slock);
 } else {
  dev_err(&dev->pci->dev,
   "Skipped frame on input %d because all buffers busy\n",
   channel);
 }

 dev->encoder_busy = 0;

 spin_unlock_irqrestore(&dev->slock, flags);

 tw_writel(TW5864_VLC_STREAM_BASE_ADDR, cur_frame->vlc.dma_addr);
 tw_writel(TW5864_MV_STREAM_BASE_ADDR, cur_frame->mv.dma_addr);


 tw_writel(TW5864_VLC_DSP_INTR, 0x00000001);
 tw_writel(TW5864_PCI_INTR_STATUS, TW5864_VLC_DONE_INTR);
}
