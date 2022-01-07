
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int str_val; } ;
struct team_gsetter_ctx {TYPE_1__ data; } ;
struct team {TYPE_2__* mode; } ;
struct TYPE_4__ {int kind; } ;



__attribute__((used)) static int team_mode_option_get(struct team *team, struct team_gsetter_ctx *ctx)
{
 ctx->data.str_val = team->mode->kind;
 return 0;
}
