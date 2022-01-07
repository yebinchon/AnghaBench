
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int u32_val; } ;
struct team_gsetter_ctx {TYPE_2__ data; } ;
struct TYPE_3__ {int interval; } ;
struct team {TYPE_1__ mcast_rejoin; } ;



__attribute__((used)) static int team_mcast_rejoin_interval_set(struct team *team,
       struct team_gsetter_ctx *ctx)
{
 team->mcast_rejoin.interval = ctx->data.u32_val;
 return 0;
}
