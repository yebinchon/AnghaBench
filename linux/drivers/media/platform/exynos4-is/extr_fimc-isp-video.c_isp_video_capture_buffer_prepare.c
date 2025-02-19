
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vb2_buffer {int vb2_queue; } ;
struct TYPE_9__ {int vdev; } ;
struct TYPE_8__ {TYPE_2__* plane_fmt; } ;
struct fimc_is_video {int buf_count; TYPE_5__** buffers; TYPE_4__ ve; TYPE_3__ pixfmt; TYPE_1__* format; } ;
struct fimc_isp {int state; struct fimc_is_video video_capture; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_10__ {scalar_t__* dma_addr; } ;
struct TYPE_7__ {unsigned long sizeimage; } ;
struct TYPE_6__ {int memplanes; } ;


 int EINVAL ;
 int ENXIO ;
 int ST_ISP_VID_CAP_BUF_PREP ;
 scalar_t__ test_bit (int ,int *) ;
 int v4l2_err (int *,char*,unsigned long,unsigned long) ;
 scalar_t__ vb2_dma_contig_plane_dma_addr (struct vb2_buffer*,int ) ;
 struct fimc_isp* vb2_get_drv_priv (int ) ;
 unsigned long vb2_plane_size (struct vb2_buffer*,int) ;
 int vb2_set_plane_payload (struct vb2_buffer*,int,unsigned long) ;

__attribute__((used)) static int isp_video_capture_buffer_prepare(struct vb2_buffer *vb)
{
 struct fimc_isp *isp = vb2_get_drv_priv(vb->vb2_queue);
 struct fimc_is_video *video = &isp->video_capture;
 int i;

 if (video->format == ((void*)0))
  return -EINVAL;

 for (i = 0; i < video->format->memplanes; i++) {
  unsigned long size = video->pixfmt.plane_fmt[i].sizeimage;

  if (vb2_plane_size(vb, i) < size) {
   v4l2_err(&video->ve.vdev,
     "User buffer too small (%ld < %ld)\n",
     vb2_plane_size(vb, i), size);
   return -EINVAL;
  }
  vb2_set_plane_payload(vb, i, size);
 }


 if (test_bit(ST_ISP_VID_CAP_BUF_PREP, &isp->state)) {
  dma_addr_t dma_addr = vb2_dma_contig_plane_dma_addr(vb, 0);
  int i;

  for (i = 0; i < video->buf_count; i++)
   if (video->buffers[i]->dma_addr[0] == dma_addr)
    return 0;
  return -ENXIO;
 }

 return 0;
}
