
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int linkup_enabled; } ;
struct team_port {TYPE_3__ user; } ;
struct TYPE_5__ {int bool_val; } ;
struct team_gsetter_ctx {TYPE_2__ data; TYPE_1__* info; } ;
struct team {int dummy; } ;
struct TYPE_4__ {struct team_port* port; } ;



__attribute__((used)) static int team_user_linkup_en_option_get(struct team *team,
       struct team_gsetter_ctx *ctx)
{
 struct team_port *port = ctx->info->port;

 ctx->data.bool_val = port->user.linkup_enabled;
 return 0;
}
