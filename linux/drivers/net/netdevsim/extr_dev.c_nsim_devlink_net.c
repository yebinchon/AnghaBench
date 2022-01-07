
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct devlink {int dummy; } ;


 struct net init_net ;

__attribute__((used)) static struct net *nsim_devlink_net(struct devlink *devlink)
{
 return &init_net;
}
