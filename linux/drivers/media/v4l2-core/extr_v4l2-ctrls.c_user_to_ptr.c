
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union v4l2_ctrl_ptr {char* p; char* p_char; int * p_s32; int * p_s64; } ;
typedef unsigned int u32 ;
struct v4l2_ext_control {unsigned int size; int value; int string; int value64; int ptr; } ;
struct v4l2_ctrl {int is_new; unsigned int elem_size; unsigned int elems; int type; int maximum; TYPE_1__* type_ops; int is_array; int is_string; scalar_t__ is_ptr; } ;
struct TYPE_2__ {int (* init ) (struct v4l2_ctrl*,unsigned int,union v4l2_ctrl_ptr) ;} ;


 int EFAULT ;
 int ERANGE ;


 scalar_t__ copy_from_user (char*,int ,unsigned int) ;
 int strlen (char*) ;
 int stub1 (struct v4l2_ctrl*,unsigned int,union v4l2_ctrl_ptr) ;

__attribute__((used)) static int user_to_ptr(struct v4l2_ext_control *c,
         struct v4l2_ctrl *ctrl,
         union v4l2_ctrl_ptr ptr)
{
 int ret;
 u32 size;

 ctrl->is_new = 1;
 if (ctrl->is_ptr && !ctrl->is_string) {
  unsigned idx;

  ret = copy_from_user(ptr.p, c->ptr, c->size) ? -EFAULT : 0;
  if (ret || !ctrl->is_array)
   return ret;
  for (idx = c->size / ctrl->elem_size; idx < ctrl->elems; idx++)
   ctrl->type_ops->init(ctrl, idx, ptr);
  return 0;
 }

 switch (ctrl->type) {
 case 129:
  *ptr.p_s64 = c->value64;
  break;
 case 128:
  size = c->size;
  if (size == 0)
   return -ERANGE;
  if (size > ctrl->maximum + 1)
   size = ctrl->maximum + 1;
  ret = copy_from_user(ptr.p_char, c->string, size) ? -EFAULT : 0;
  if (!ret) {
   char last = ptr.p_char[size - 1];

   ptr.p_char[size - 1] = 0;


   if (strlen(ptr.p_char) == ctrl->maximum && last)
    return -ERANGE;
  }
  return ret;
 default:
  *ptr.p_s32 = c->value;
  break;
 }
 return 0;
}
