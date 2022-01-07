
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int vb2_queue; } ;
struct TYPE_8__ {int sizeimage; } ;
struct TYPE_9__ {TYPE_3__ pix; } ;
struct TYPE_10__ {TYPE_4__ fmt; } ;
struct isp_video_fh {TYPE_5__ format; struct isp_video* video; } ;
struct isp_video {TYPE_1__* isp; int error; } ;
struct TYPE_7__ {int vb2_buf; } ;
struct isp_buffer {int dma; TYPE_2__ vb; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {int dev; } ;


 int EINVAL ;
 int EIO ;
 int IS_ALIGNED (int ,int) ;
 int dev_dbg (int ,char*) ;
 struct isp_buffer* to_isp_buffer (struct vb2_v4l2_buffer*) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 scalar_t__ unlikely (int ) ;
 int vb2_dma_contig_plane_dma_addr (struct vb2_buffer*,int ) ;
 struct isp_video_fh* vb2_get_drv_priv (int ) ;
 int vb2_set_plane_payload (int *,int ,int ) ;

__attribute__((used)) static int isp_video_buffer_prepare(struct vb2_buffer *buf)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(buf);
 struct isp_video_fh *vfh = vb2_get_drv_priv(buf->vb2_queue);
 struct isp_buffer *buffer = to_isp_buffer(vbuf);
 struct isp_video *video = vfh->video;
 dma_addr_t addr;







 if (unlikely(video->error))
  return -EIO;

 addr = vb2_dma_contig_plane_dma_addr(buf, 0);
 if (!IS_ALIGNED(addr, 32)) {
  dev_dbg(video->isp->dev,
   "Buffer address must be aligned to 32 bytes boundary.\n");
  return -EINVAL;
 }

 vb2_set_plane_payload(&buffer->vb.vb2_buf, 0,
         vfh->format.fmt.pix.sizeimage);
 buffer->dma = addr;

 return 0;
}
