
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct venus_inst {struct v4l2_m2m_ctx* m2m_ctx; } ;
struct vb2_v4l2_buffer {int dummy; } ;
struct v4l2_m2m_ctx {int dummy; } ;


 unsigned int V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove_by_idx (struct v4l2_m2m_ctx*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove_by_idx (struct v4l2_m2m_ctx*,int ) ;

struct vb2_v4l2_buffer *
venus_helper_find_buf(struct venus_inst *inst, unsigned int type, u32 idx)
{
 struct v4l2_m2m_ctx *m2m_ctx = inst->m2m_ctx;

 if (type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
  return v4l2_m2m_src_buf_remove_by_idx(m2m_ctx, idx);
 else
  return v4l2_m2m_dst_buf_remove_by_idx(m2m_ctx, idx);
}
