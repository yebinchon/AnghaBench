
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int linkup; } ;
struct team_port {int team; TYPE_2__ user; } ;
struct TYPE_6__ {int bool_val; } ;
struct team_gsetter_ctx {TYPE_3__ data; TYPE_1__* info; } ;
struct team {int dummy; } ;
struct TYPE_4__ {struct team_port* port; } ;


 int __team_carrier_check (int ) ;
 int team_refresh_port_linkup (struct team_port*) ;

__attribute__((used)) static int team_user_linkup_option_set(struct team *team,
           struct team_gsetter_ctx *ctx)
{
 struct team_port *port = ctx->info->port;

 port->user.linkup = ctx->data.bool_val;
 team_refresh_port_linkup(port);
 __team_carrier_check(port->team);
 return 0;
}
