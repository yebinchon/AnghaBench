
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {scalar_t__ val; scalar_t__ manual_mode_value; scalar_t__ is_auto; } ;



__attribute__((used)) static bool is_new_manual(const struct v4l2_ctrl *master)
{
 return master->is_auto && master->val == master->manual_mode_value;
}
