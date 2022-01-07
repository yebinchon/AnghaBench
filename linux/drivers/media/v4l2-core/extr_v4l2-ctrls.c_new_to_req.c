
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl_ref {struct v4l2_ctrl_ref* req; int p_req; TYPE_1__* ctrl; } ;
struct TYPE_2__ {int p_new; } ;


 int ptr_to_ptr (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void new_to_req(struct v4l2_ctrl_ref *ref)
{
 if (!ref)
  return;
 ptr_to_ptr(ref->ctrl, ref->ctrl->p_new, ref->p_req);
 ref->req = ref;
}
