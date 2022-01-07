
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_ctrl_ref {TYPE_2__* ctrl; TYPE_1__* req; } ;
struct TYPE_4__ {int p_new; int p_cur; } ;
struct TYPE_3__ {int p_req; } ;


 int ptr_to_ptr (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void req_to_new(struct v4l2_ctrl_ref *ref)
{
 if (!ref)
  return;
 if (ref->req)
  ptr_to_ptr(ref->ctrl, ref->req->p_req, ref->ctrl->p_new);
 else
  ptr_to_ptr(ref->ctrl, ref->ctrl->p_cur, ref->ctrl->p_new);
}
