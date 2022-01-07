
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int timestamp; } ;
struct vb2_v4l2_buffer {unsigned int sequence; TYPE_2__ vb2_buf; int field; } ;
struct TYPE_3__ {int field; } ;
struct sun4i_csi {struct vb2_v4l2_buffer** current_buf; TYPE_1__ fmt; int dev; } ;


 int VB2_BUF_STATE_DONE ;
 int dev_dbg (int ,char*) ;
 int ktime_get_ns () ;
 int vb2_buffer_done (TYPE_2__*,int ) ;

__attribute__((used)) static void sun4i_csi_buffer_mark_done(struct sun4i_csi *csi,
           unsigned int slot,
           unsigned int sequence)
{
 struct vb2_v4l2_buffer *v_buf;

 if (!csi->current_buf[slot]) {
  dev_dbg(csi->dev, "Scratch buffer was used, ignoring..\n");
  return;
 }

 v_buf = csi->current_buf[slot];
 v_buf->field = csi->fmt.field;
 v_buf->sequence = sequence;
 v_buf->vb2_buf.timestamp = ktime_get_ns();
 vb2_buffer_done(&v_buf->vb2_buf, VB2_BUF_STATE_DONE);

 csi->current_buf[slot] = ((void*)0);
}
