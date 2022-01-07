
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_v4l2_buffer {int flags; int field; int vb2_buf; } ;
struct vb2_buffer {int timestamp; } ;
struct TYPE_2__ {int size; } ;
struct delta_frame {int flags; int field; int dts; TYPE_1__ info; } ;


 struct delta_frame* to_frame (struct vb2_v4l2_buffer*) ;
 struct vb2_v4l2_buffer* to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 int vb2_set_plane_payload (int *,int ,int ) ;

__attribute__((used)) static void delta_vb2_frame_finish(struct vb2_buffer *vb)
{
 struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 struct delta_frame *frame = to_frame(vbuf);


 vb2_set_plane_payload(&vbuf->vb2_buf, 0, frame->info.size);
 vb->timestamp = frame->dts;
 vbuf->field = frame->field;
 vbuf->flags = frame->flags;
}
