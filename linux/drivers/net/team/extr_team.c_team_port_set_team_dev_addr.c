
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct team_port {int dev; } ;
struct team {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev_addr; } ;


 int __set_port_dev_addr (int ,int ) ;

__attribute__((used)) static int team_port_set_team_dev_addr(struct team *team,
           struct team_port *port)
{
 return __set_port_dev_addr(port->dev, team->dev->dev_addr);
}
