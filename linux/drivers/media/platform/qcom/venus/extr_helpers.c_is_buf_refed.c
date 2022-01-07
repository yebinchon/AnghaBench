
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int delayed_process_work; int delayed_process; } ;
struct venus_buffer {int flags; int ref_list; } ;
struct vb2_v4l2_buffer {int dummy; } ;


 int HFI_BUFFERFLAG_READONLY ;
 int list_add_tail (int *,int *) ;
 int schedule_work (int *) ;
 struct venus_buffer* to_venus_buffer (struct vb2_v4l2_buffer*) ;

__attribute__((used)) static int is_buf_refed(struct venus_inst *inst, struct vb2_v4l2_buffer *vbuf)
{
 struct venus_buffer *buf = to_venus_buffer(vbuf);

 if (buf->flags & HFI_BUFFERFLAG_READONLY) {
  list_add_tail(&buf->ref_list, &inst->delayed_process);
  schedule_work(&inst->delayed_process_work);
  return 1;
 }

 return 0;
}
