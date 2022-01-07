
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dw; } ;
struct team {TYPE_1__ mcast_rejoin; } ;


 int cancel_delayed_work_sync (int *) ;

__attribute__((used)) static void team_mcast_rejoin_fini(struct team *team)
{
 cancel_delayed_work_sync(&team->mcast_rejoin.dw);
}
