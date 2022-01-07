
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union v4l2_ctrl_ptr {int * p_s32; int * p_s64; int p_char; int p; } ;
typedef int u32 ;
struct v4l2_ext_control {int value; int value64; int string; int size; int ptr; } ;
struct v4l2_ctrl {int type; int elem_size; int is_string; scalar_t__ is_ptr; } ;


 int EFAULT ;
 int ENOSPC ;


 scalar_t__ copy_to_user (int ,int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int ptr_to_user(struct v4l2_ext_control *c,
         struct v4l2_ctrl *ctrl,
         union v4l2_ctrl_ptr ptr)
{
 u32 len;

 if (ctrl->is_ptr && !ctrl->is_string)
  return copy_to_user(c->ptr, ptr.p, c->size) ?
         -EFAULT : 0;

 switch (ctrl->type) {
 case 128:
  len = strlen(ptr.p_char);
  if (c->size < len + 1) {
   c->size = ctrl->elem_size;
   return -ENOSPC;
  }
  return copy_to_user(c->string, ptr.p_char, len + 1) ?
         -EFAULT : 0;
 case 129:
  c->value64 = *ptr.p_s64;
  break;
 default:
  c->value = *ptr.p_s32;
  break;
 }
 return 0;
}
