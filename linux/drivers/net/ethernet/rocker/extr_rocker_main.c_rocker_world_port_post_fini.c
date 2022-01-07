
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rocker_world_ops {int (* port_post_fini ) (struct rocker_port*) ;} ;
struct rocker_port {int wpriv; TYPE_1__* rocker; } ;
struct TYPE_2__ {struct rocker_world_ops* wops; } ;


 int kfree (int ) ;
 int stub1 (struct rocker_port*) ;

__attribute__((used)) static void rocker_world_port_post_fini(struct rocker_port *rocker_port)
{
 struct rocker_world_ops *wops = rocker_port->rocker->wops;

 if (!wops->port_post_fini)
  return;
 wops->port_post_fini(rocker_port);
 kfree(rocker_port->wpriv);
}
