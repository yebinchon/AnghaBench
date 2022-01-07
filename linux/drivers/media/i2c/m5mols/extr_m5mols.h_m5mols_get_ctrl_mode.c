
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {scalar_t__ priv; } ;



__attribute__((used)) static inline unsigned int m5mols_get_ctrl_mode(struct v4l2_ctrl *ctrl)
{
 return (unsigned int)(uintptr_t)ctrl->priv;
}
