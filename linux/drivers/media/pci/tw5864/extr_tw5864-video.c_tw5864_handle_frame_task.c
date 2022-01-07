
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int dma_addr; } ;
struct TYPE_4__ {int dma_addr; } ;
struct tw5864_h264_frame {TYPE_3__ mv; TYPE_1__ vlc; } ;
struct tw5864_dev {size_t h264_buf_r_index; size_t h264_buf_w_index; int slock; TYPE_2__* pci; struct tw5864_h264_frame* h264_buf; } ;
struct TYPE_5__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int H264_BUF_CNT ;
 int H264_MV_BUF_SIZE ;
 int H264_VLC_BUF_SIZE ;
 int dma_sync_single_for_cpu (int *,int ,int ,int ) ;
 int dma_sync_single_for_device (int *,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tw5864_handle_frame (struct tw5864_h264_frame*) ;

__attribute__((used)) static void tw5864_handle_frame_task(unsigned long data)
{
 struct tw5864_dev *dev = (struct tw5864_dev *)data;
 unsigned long flags;
 int batch_size = H264_BUF_CNT;

 spin_lock_irqsave(&dev->slock, flags);
 while (dev->h264_buf_r_index != dev->h264_buf_w_index && batch_size--) {
  struct tw5864_h264_frame *frame =
   &dev->h264_buf[dev->h264_buf_r_index];

  spin_unlock_irqrestore(&dev->slock, flags);
  dma_sync_single_for_cpu(&dev->pci->dev, frame->vlc.dma_addr,
     H264_VLC_BUF_SIZE, DMA_FROM_DEVICE);
  dma_sync_single_for_cpu(&dev->pci->dev, frame->mv.dma_addr,
     H264_MV_BUF_SIZE, DMA_FROM_DEVICE);
  tw5864_handle_frame(frame);
  dma_sync_single_for_device(&dev->pci->dev, frame->vlc.dma_addr,
        H264_VLC_BUF_SIZE, DMA_FROM_DEVICE);
  dma_sync_single_for_device(&dev->pci->dev, frame->mv.dma_addr,
        H264_MV_BUF_SIZE, DMA_FROM_DEVICE);
  spin_lock_irqsave(&dev->slock, flags);

  dev->h264_buf_r_index++;
  dev->h264_buf_r_index %= H264_BUF_CNT;
 }
 spin_unlock_irqrestore(&dev->slock, flags);
}
