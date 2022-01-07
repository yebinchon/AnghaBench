
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct team_port {int dummy; } ;
struct TYPE_2__ {int (* port_leave ) (struct team*,struct team_port*) ;} ;
struct team {int dev; TYPE_1__ ops; } ;


 int dev_put (int ) ;
 int stub1 (struct team*,struct team_port*) ;

__attribute__((used)) static void team_port_leave(struct team *team, struct team_port *port)
{
 if (team->ops.port_leave)
  team->ops.port_leave(team, port);
 dev_put(team->dev);
}
