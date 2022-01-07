
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adv76xx_state {TYPE_1__* info; } ;
struct TYPE_2__ {int has_afe; } ;



__attribute__((used)) static bool adv76xx_has_afe(struct adv76xx_state *state)
{
 return state->info->has_afe;
}
