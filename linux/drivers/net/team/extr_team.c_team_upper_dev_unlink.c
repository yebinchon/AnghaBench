
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct team_port {TYPE_1__* dev; } ;
struct team {int dev; } ;
struct TYPE_2__ {int priv_flags; } ;


 int IFF_TEAM_PORT ;
 int netdev_upper_dev_unlink (TYPE_1__*,int ) ;

__attribute__((used)) static void team_upper_dev_unlink(struct team *team, struct team_port *port)
{
 netdev_upper_dev_unlink(port->dev, team->dev);
 port->dev->priv_flags &= ~IFF_TEAM_PORT;
}
