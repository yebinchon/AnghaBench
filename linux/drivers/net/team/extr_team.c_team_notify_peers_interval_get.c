
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int u32_val; } ;
struct team_gsetter_ctx {TYPE_1__ data; } ;
struct TYPE_4__ {int interval; } ;
struct team {TYPE_2__ notify_peers; } ;



__attribute__((used)) static int team_notify_peers_interval_get(struct team *team,
       struct team_gsetter_ctx *ctx)
{
 ctx->data.u32_val = team->notify_peers.interval;
 return 0;
}
