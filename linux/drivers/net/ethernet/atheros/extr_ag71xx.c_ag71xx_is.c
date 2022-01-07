
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ag71xx {TYPE_1__* dcfg; } ;
typedef enum ag71xx_type { ____Placeholder_ag71xx_type } ag71xx_type ;
struct TYPE_2__ {int type; } ;



__attribute__((used)) static bool ag71xx_is(struct ag71xx *ag, enum ag71xx_type type)
{
 return ag->dcfg->type == type;
}
