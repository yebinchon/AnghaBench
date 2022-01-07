
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct port {size_t node; TYPE_2__* card; } ;
typedef int port_status_t ;
struct TYPE_4__ {TYPE_1__* status; } ;
struct TYPE_3__ {int * port_status; } ;



__attribute__((used)) static inline port_status_t *get_status(struct port *port)
{
 return &port->card->status->port_status[port->node];
}
