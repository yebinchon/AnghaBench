
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int timestamp; } ;
struct TYPE_6__ {TYPE_3__ vb2_buf; int field; scalar_t__ sequence; } ;
struct stk1160_buffer {TYPE_2__ vb; int bytesused; } ;
struct TYPE_5__ {struct stk1160_buffer* buf; } ;
struct stk1160 {TYPE_1__ isoc_ctl; int sequence; } ;


 int V4L2_FIELD_INTERLACED ;
 int VB2_BUF_STATE_DONE ;
 int ktime_get_ns () ;
 int vb2_buffer_done (TYPE_3__*,int ) ;
 int vb2_set_plane_payload (TYPE_3__*,int ,int ) ;

__attribute__((used)) static inline
void stk1160_buffer_done(struct stk1160 *dev)
{
 struct stk1160_buffer *buf = dev->isoc_ctl.buf;

 buf->vb.sequence = dev->sequence++;
 buf->vb.field = V4L2_FIELD_INTERLACED;
 buf->vb.vb2_buf.timestamp = ktime_get_ns();

 vb2_set_plane_payload(&buf->vb.vb2_buf, 0, buf->bytesused);
 vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_DONE);

 dev->isoc_ctl.buf = ((void*)0);
}
