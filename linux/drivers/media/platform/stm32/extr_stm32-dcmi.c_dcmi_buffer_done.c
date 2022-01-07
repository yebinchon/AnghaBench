
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index; int timestamp; } ;
struct vb2_v4l2_buffer {scalar_t__ sequence; TYPE_1__ vb2_buf; int field; } ;
struct stm32_dcmi {int * active; int buffers_count; int dev; int sequence; } ;
struct dcmi_buf {struct vb2_v4l2_buffer vb; int list; } ;


 int V4L2_FIELD_NONE ;
 int VB2_BUF_STATE_DONE ;
 int VB2_BUF_STATE_ERROR ;
 int dev_dbg (int ,char*,int ,scalar_t__,size_t) ;
 int ktime_get_ns () ;
 int list_del_init (int *) ;
 int vb2_buffer_done (TYPE_1__*,int ) ;
 int vb2_set_plane_payload (TYPE_1__*,int ,size_t) ;

__attribute__((used)) static void dcmi_buffer_done(struct stm32_dcmi *dcmi,
        struct dcmi_buf *buf,
        size_t bytesused,
        int err)
{
 struct vb2_v4l2_buffer *vbuf;

 if (!buf)
  return;

 list_del_init(&buf->list);

 vbuf = &buf->vb;

 vbuf->sequence = dcmi->sequence++;
 vbuf->field = V4L2_FIELD_NONE;
 vbuf->vb2_buf.timestamp = ktime_get_ns();
 vb2_set_plane_payload(&vbuf->vb2_buf, 0, bytesused);
 vb2_buffer_done(&vbuf->vb2_buf,
   err ? VB2_BUF_STATE_ERROR : VB2_BUF_STATE_DONE);
 dev_dbg(dcmi->dev, "buffer[%d] done seq=%d, bytesused=%zu\n",
  vbuf->vb2_buf.index, vbuf->sequence, bytesused);

 dcmi->buffers_count++;
 dcmi->active = ((void*)0);
}
