
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union v4l2_ctrl_ptr {int p; } ;
struct v4l2_ctrl {int elems; int elem_size; } ;


 int memcpy (int ,int ,int) ;

__attribute__((used)) static void ptr_to_ptr(struct v4l2_ctrl *ctrl,
         union v4l2_ctrl_ptr from, union v4l2_ctrl_ptr to)
{
 if (ctrl == ((void*)0))
  return;
 memcpy(to.p, from.p, ctrl->elems * ctrl->elem_size);
}
