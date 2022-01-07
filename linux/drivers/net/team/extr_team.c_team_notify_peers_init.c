
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dw; } ;
struct team {TYPE_1__ notify_peers; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int team_notify_peers_work ;

__attribute__((used)) static void team_notify_peers_init(struct team *team)
{
 INIT_DELAYED_WORK(&team->notify_peers.dw, team_notify_peers_work);
}
