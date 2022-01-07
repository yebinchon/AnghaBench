
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adv7180_state {TYPE_1__* chip_info; } ;
struct TYPE_2__ {int (* set_std ) (struct adv7180_state*,unsigned int) ;} ;


 int stub1 (struct adv7180_state*,unsigned int) ;

__attribute__((used)) static int adv7180_set_video_standard(struct adv7180_state *state,
 unsigned int std)
{
 return state->chip_info->set_std(state, std);
}
