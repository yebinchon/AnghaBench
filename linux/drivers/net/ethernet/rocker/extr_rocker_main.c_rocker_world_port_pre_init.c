
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rocker_world_ops {int (* port_pre_init ) (struct rocker_port*) ;int port_priv_size; } ;
struct rocker_port {int wpriv; TYPE_1__* rocker; } ;
struct TYPE_2__ {struct rocker_world_ops* wops; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int ) ;
 int kzalloc (int ,int ) ;
 int stub1 (struct rocker_port*) ;

__attribute__((used)) static int rocker_world_port_pre_init(struct rocker_port *rocker_port)
{
 struct rocker_world_ops *wops = rocker_port->rocker->wops;
 int err;

 rocker_port->wpriv = kzalloc(wops->port_priv_size, GFP_KERNEL);
 if (!rocker_port->wpriv)
  return -ENOMEM;
 if (!wops->port_pre_init)
  return 0;
 err = wops->port_pre_init(rocker_port);
 if (err)
  kfree(rocker_port->wpriv);
 return 0;
}
