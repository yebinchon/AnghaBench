
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ val; } ;
struct v4l2_ctrl {scalar_t__ manual_mode_value; TYPE_1__ cur; scalar_t__ is_auto; } ;



__attribute__((used)) static bool is_cur_manual(const struct v4l2_ctrl *master)
{
 return master->is_auto && master->cur.val == master->manual_mode_value;
}
