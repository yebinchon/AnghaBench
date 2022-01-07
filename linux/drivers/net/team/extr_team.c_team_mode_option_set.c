
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int str_val; } ;
struct team_gsetter_ctx {TYPE_1__ data; } ;
struct team {int dummy; } ;


 int team_change_mode (struct team*,int ) ;

__attribute__((used)) static int team_mode_option_set(struct team *team, struct team_gsetter_ctx *ctx)
{
 return team_change_mode(team, ctx->data.str_val);
}
