
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct team_option_inst_info {int dummy; } ;
struct team {int dummy; } ;
struct TYPE_2__ {struct team_option_inst_info* ap_opt_inst_info; } ;


 TYPE_1__* ab_priv (struct team*) ;

__attribute__((used)) static int ab_active_port_init(struct team *team,
          struct team_option_inst_info *info)
{
 ab_priv(team)->ap_opt_inst_info = info;
 return 0;
}
