
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct venus_inst {TYPE_1__* tss; } ;
struct vb2_buffer {int timestamp; } ;
struct vb2_v4l2_buffer {int timecode; int flags; struct vb2_buffer vb2_buf; } ;
struct TYPE_2__ {int used; scalar_t__ ts_us; int ts_ns; int tc; int flags; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;

void venus_helper_get_ts_metadata(struct venus_inst *inst, u64 timestamp_us,
      struct vb2_v4l2_buffer *vbuf)
{
 struct vb2_buffer *vb = &vbuf->vb2_buf;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(inst->tss); ++i) {
  if (!inst->tss[i].used)
   continue;

  if (inst->tss[i].ts_us != timestamp_us)
   continue;

  inst->tss[i].used = 0;
  vbuf->flags |= inst->tss[i].flags;
  vbuf->timecode = inst->tss[i].tc;
  vb->timestamp = inst->tss[i].ts_ns;
  break;
 }
}
