
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {scalar_t__ type; int drv_priv; } ;
struct vb2_buffer {struct vb2_queue* vb2_queue; } ;
struct s5p_mfc_ctx {scalar_t__ enc_dst_buf_size; scalar_t__ luma_size; scalar_t__ chroma_size; int src_fmt; int dst_fmt; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 int check_vb_with_fmt (int ,struct vb2_buffer*) ;
 struct s5p_mfc_ctx* fh_to_ctx (int ) ;
 int mfc_debug (int,char*,scalar_t__,scalar_t__) ;
 int mfc_err (char*,...) ;
 scalar_t__ vb2_plane_size (struct vb2_buffer*,int) ;

__attribute__((used)) static int s5p_mfc_buf_prepare(struct vb2_buffer *vb)
{
 struct vb2_queue *vq = vb->vb2_queue;
 struct s5p_mfc_ctx *ctx = fh_to_ctx(vq->drv_priv);
 int ret;

 if (vq->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
  ret = check_vb_with_fmt(ctx->dst_fmt, vb);
  if (ret < 0)
   return ret;
  mfc_debug(2, "plane size: %ld, dst size: %zu\n",
   vb2_plane_size(vb, 0), ctx->enc_dst_buf_size);
  if (vb2_plane_size(vb, 0) < ctx->enc_dst_buf_size) {
   mfc_err("plane size is too small for capture\n");
   return -EINVAL;
  }
 } else if (vq->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
  ret = check_vb_with_fmt(ctx->src_fmt, vb);
  if (ret < 0)
   return ret;
  mfc_debug(2, "plane size: %ld, luma size: %d\n",
   vb2_plane_size(vb, 0), ctx->luma_size);
  mfc_debug(2, "plane size: %ld, chroma size: %d\n",
   vb2_plane_size(vb, 1), ctx->chroma_size);
  if (vb2_plane_size(vb, 0) < ctx->luma_size ||
      vb2_plane_size(vb, 1) < ctx->chroma_size) {
   mfc_err("plane size is too small for output\n");
   return -EINVAL;
  }
 } else {
  mfc_err("invalid queue type: %d\n", vq->type);
  return -EINVAL;
 }
 return 0;
}
