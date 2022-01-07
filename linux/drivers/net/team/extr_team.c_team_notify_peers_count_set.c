
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int u32_val; } ;
struct team_gsetter_ctx {TYPE_2__ data; } ;
struct TYPE_3__ {int count; } ;
struct team {TYPE_1__ notify_peers; } ;



__attribute__((used)) static int team_notify_peers_count_set(struct team *team,
           struct team_gsetter_ctx *ctx)
{
 team->notify_peers.count = ctx->data.u32_val;
 return 0;
}
