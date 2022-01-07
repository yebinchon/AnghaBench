
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tw5864_dev {TYPE_4__* h264_buf; TYPE_2__* pci; int * inputs; int tasklet; } ;
struct TYPE_7__ {int dma_addr; int addr; } ;
struct TYPE_5__ {int dma_addr; int addr; } ;
struct TYPE_8__ {TYPE_3__ mv; TYPE_1__ vlc; } ;
struct TYPE_6__ {int dev; } ;


 int H264_BUF_CNT ;
 int H264_MV_BUF_SIZE ;
 int H264_VLC_BUF_SIZE ;
 int TW5864_INPUTS ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int tasklet_kill (int *) ;
 int tw5864_video_input_fini (int *) ;

void tw5864_video_fini(struct tw5864_dev *dev)
{
 int i;

 tasklet_kill(&dev->tasklet);

 for (i = 0; i < TW5864_INPUTS; i++)
  tw5864_video_input_fini(&dev->inputs[i]);

 for (i = 0; i < H264_BUF_CNT; i++) {
  dma_free_coherent(&dev->pci->dev, H264_VLC_BUF_SIZE,
      dev->h264_buf[i].vlc.addr,
      dev->h264_buf[i].vlc.dma_addr);
  dma_free_coherent(&dev->pci->dev, H264_MV_BUF_SIZE,
      dev->h264_buf[i].mv.addr,
      dev->h264_buf[i].mv.dma_addr);
 }
}
