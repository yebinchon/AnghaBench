
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct nfp_port {TYPE_2__* app; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int * (* port_get_stats_strings ) (TYPE_2__*,struct nfp_port*,int *) ;} ;


 int * stub1 (TYPE_2__*,struct nfp_port*,int *) ;

u8 *nfp_app_port_get_stats_strings(struct nfp_port *port, u8 *data)
{
 if (!port || !port->app || !port->app->type->port_get_stats_strings)
  return data;
 return port->app->type->port_get_stats_strings(port->app, port, data);
}
