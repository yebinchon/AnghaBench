
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xtpg_device {int npads; TYPE_1__* pattern; int has_input; } ;
struct TYPE_2__ {int maximum; } ;


 int __v4l2_ctrl_modify_range (TYPE_1__*,int ,int,int,int) ;

__attribute__((used)) static void __xtpg_update_pattern_control(struct xtpg_device *xtpg,
       bool passthrough, bool pattern)
{
 u32 pattern_mask = (1 << (xtpg->pattern->maximum + 1)) - 1;





 if (xtpg->npads == 1 || !xtpg->has_input)
  passthrough = 0;


 if (passthrough)
  pattern_mask &= ~1;


 if (pattern)
  pattern_mask &= 1;

 __v4l2_ctrl_modify_range(xtpg->pattern, 0, xtpg->pattern->maximum,
     pattern_mask, pattern ? 9 : 0);
}
