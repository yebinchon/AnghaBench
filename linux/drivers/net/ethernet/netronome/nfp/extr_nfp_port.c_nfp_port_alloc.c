
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_port {int type; int port_list; struct nfp_app* app; struct net_device* netdev; } ;
struct nfp_app {TYPE_1__* pf; } ;
struct net_device {int dummy; } ;
typedef enum nfp_port_type { ____Placeholder_nfp_port_type } nfp_port_type ;
struct TYPE_2__ {int ports; } ;


 int ENOMEM ;
 struct nfp_port* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct nfp_port* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

struct nfp_port *
nfp_port_alloc(struct nfp_app *app, enum nfp_port_type type,
        struct net_device *netdev)
{
 struct nfp_port *port;

 port = kzalloc(sizeof(*port), GFP_KERNEL);
 if (!port)
  return ERR_PTR(-ENOMEM);

 port->netdev = netdev;
 port->type = type;
 port->app = app;

 list_add_tail(&port->port_list, &app->pf->ports);

 return port;
}
