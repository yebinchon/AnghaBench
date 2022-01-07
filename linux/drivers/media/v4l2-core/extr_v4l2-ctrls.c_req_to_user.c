
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_control {int dummy; } ;
struct v4l2_ctrl_ref {int p_req; int ctrl; } ;


 int ptr_to_user (struct v4l2_ext_control*,int ,int ) ;

__attribute__((used)) static int req_to_user(struct v4l2_ext_control *c,
         struct v4l2_ctrl_ref *ref)
{
 return ptr_to_user(c, ref->ctrl, ref->p_req);
}
