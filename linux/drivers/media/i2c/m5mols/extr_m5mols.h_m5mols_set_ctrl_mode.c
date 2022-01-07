
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {void* priv; } ;



__attribute__((used)) static inline void m5mols_set_ctrl_mode(struct v4l2_ctrl *ctrl,
     unsigned int mode)
{
 ctrl->priv = (void *)(uintptr_t)mode;
}
