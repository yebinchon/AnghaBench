
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct team_option_inst {TYPE_1__* option; } ;
struct team_gsetter_ctx {int dummy; } ;
struct team {int dummy; } ;
struct TYPE_2__ {int (* getter ) (struct team*,struct team_gsetter_ctx*) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct team*,struct team_gsetter_ctx*) ;

__attribute__((used)) static int team_option_get(struct team *team,
      struct team_option_inst *opt_inst,
      struct team_gsetter_ctx *ctx)
{
 if (!opt_inst->option->getter)
  return -EOPNOTSUPP;
 return opt_inst->option->getter(team, ctx);
}
