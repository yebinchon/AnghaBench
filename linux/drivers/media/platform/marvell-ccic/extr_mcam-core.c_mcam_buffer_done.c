
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int timestamp; TYPE_1__* planes; } ;
struct vb2_v4l2_buffer {TYPE_3__ vb2_buf; int field; int sequence; } ;
struct TYPE_6__ {int sizeimage; } ;
struct mcam_camera {TYPE_2__ pix_format; int * buf_seq; } ;
struct TYPE_5__ {int bytesused; } ;


 int V4L2_FIELD_NONE ;
 int VB2_BUF_STATE_DONE ;
 int ktime_get_ns () ;
 int vb2_buffer_done (TYPE_3__*,int ) ;
 int vb2_set_plane_payload (TYPE_3__*,int ,int ) ;

__attribute__((used)) static void mcam_buffer_done(struct mcam_camera *cam, int frame,
  struct vb2_v4l2_buffer *vbuf)
{
 vbuf->vb2_buf.planes[0].bytesused = cam->pix_format.sizeimage;
 vbuf->sequence = cam->buf_seq[frame];
 vbuf->field = V4L2_FIELD_NONE;
 vbuf->vb2_buf.timestamp = ktime_get_ns();
 vb2_set_plane_payload(&vbuf->vb2_buf, 0, cam->pix_format.sizeimage);
 vb2_buffer_done(&vbuf->vb2_buf, VB2_BUF_STATE_DONE);
}
