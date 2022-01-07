
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nents; int sgl; } ;
struct ispstat_buffer {TYPE_2__ sgt; } ;
struct ispstat {TYPE_1__* isp; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 scalar_t__ ISP_STAT_USES_DMAENGINE (struct ispstat*) ;
 int dma_sync_sg_for_device (int ,int ,int ,int ) ;

__attribute__((used)) static void isp_stat_buf_sync_for_device(struct ispstat *stat,
      struct ispstat_buffer *buf)
{
 if (ISP_STAT_USES_DMAENGINE(stat))
  return;

 dma_sync_sg_for_device(stat->isp->dev, buf->sgt.sgl,
          buf->sgt.nents, DMA_FROM_DEVICE);
}
