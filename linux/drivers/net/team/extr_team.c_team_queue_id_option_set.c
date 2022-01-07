
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct team_port {scalar_t__ queue_id; } ;
struct TYPE_5__ {scalar_t__ u32_val; } ;
struct team_gsetter_ctx {TYPE_2__ data; TYPE_1__* info; } ;
struct team {TYPE_3__* dev; } ;
struct TYPE_6__ {scalar_t__ real_num_tx_queues; } ;
struct TYPE_4__ {struct team_port* port; } ;


 int EINVAL ;
 int team_queue_override_port_change_queue_id (struct team*,struct team_port*,scalar_t__) ;

__attribute__((used)) static int team_queue_id_option_set(struct team *team,
        struct team_gsetter_ctx *ctx)
{
 struct team_port *port = ctx->info->port;
 u16 new_queue_id = ctx->data.u32_val;

 if (port->queue_id == new_queue_id)
  return 0;
 if (new_queue_id >= team->dev->real_num_tx_queues)
  return -EINVAL;
 team_queue_override_port_change_queue_id(team, port, new_queue_id);
 return 0;
}
