
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct team_port {int queue_id; } ;
struct TYPE_4__ {int u32_val; } ;
struct team_gsetter_ctx {TYPE_2__ data; TYPE_1__* info; } ;
struct team {int dummy; } ;
struct TYPE_3__ {struct team_port* port; } ;



__attribute__((used)) static int team_queue_id_option_get(struct team *team,
        struct team_gsetter_ctx *ctx)
{
 struct team_port *port = ctx->info->port;

 ctx->data.u32_val = port->queue_id;
 return 0;
}
