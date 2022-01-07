
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_v4l2_buffer {int flags; } ;
struct vb2_buffer {int vb2_queue; } ;
struct solo_enc_dev {int fmt; int jpeg_len; int jpeg_header; int vop_len; int vop; } ;
struct sg_table {int nents; int sgl; } ;


 int V4L2_BUF_FLAG_KEYFRAME ;


 int sg_copy_from_buffer (int ,int ,int ,int ) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 struct sg_table* vb2_dma_sg_plane_desc (struct vb2_buffer*,int ) ;
 struct solo_enc_dev* vb2_get_drv_priv (int ) ;

__attribute__((used)) static void solo_enc_buf_finish(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct solo_enc_dev *solo_enc = vb2_get_drv_priv(vb->vb2_queue);
 struct sg_table *sgt = vb2_dma_sg_plane_desc(vb, 0);

 switch (solo_enc->fmt) {
 case 128:
 case 129:
  if (vbuf->flags & V4L2_BUF_FLAG_KEYFRAME)
   sg_copy_from_buffer(sgt->sgl, sgt->nents,
     solo_enc->vop, solo_enc->vop_len);
  break;
 default:
  sg_copy_from_buffer(sgt->sgl, sgt->nents,
    solo_enc->jpeg_header, solo_enc->jpeg_len);
  break;
 }
}
