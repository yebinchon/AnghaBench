
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdp1_field_buffer {int vb; scalar_t__ last_field; } ;
struct fdp1_ctx {int dummy; } ;


 int VB2_BUF_STATE_DONE ;
 int v4l2_m2m_buf_done (int ,int ) ;

__attribute__((used)) static void fdp1_field_complete(struct fdp1_ctx *ctx,
    struct fdp1_field_buffer *fbuf)
{

 if (!fbuf)
  return;

 if (fbuf->last_field)
  v4l2_m2m_buf_done(fbuf->vb, VB2_BUF_STATE_DONE);
}
