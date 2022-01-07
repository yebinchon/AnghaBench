
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dw; int count_pending; int count; } ;
struct team {TYPE_1__ mcast_rejoin; int dev; } ;


 int atomic_add (int ,int *) ;
 int netif_running (int ) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void team_mcast_rejoin(struct team *team)
{
 if (!team->mcast_rejoin.count || !netif_running(team->dev))
  return;
 atomic_add(team->mcast_rejoin.count, &team->mcast_rejoin.count_pending);
 schedule_delayed_work(&team->mcast_rejoin.dw, 0);
}
