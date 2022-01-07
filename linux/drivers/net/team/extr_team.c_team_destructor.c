
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team {int pcpu_stats; } ;
struct net_device {int dummy; } ;


 int free_percpu (int ) ;
 struct team* netdev_priv (struct net_device*) ;

__attribute__((used)) static void team_destructor(struct net_device *dev)
{
 struct team *team = netdev_priv(dev);

 free_percpu(team->pcpu_stats);
}
