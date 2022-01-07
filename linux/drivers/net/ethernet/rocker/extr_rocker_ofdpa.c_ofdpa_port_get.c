
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rocker_port {struct ofdpa_port* wpriv; } ;
struct ofdpa_port {int dummy; } ;
struct ofdpa {TYPE_1__* rocker; } ;
struct TYPE_2__ {struct rocker_port** ports; } ;



__attribute__((used)) static struct ofdpa_port *ofdpa_port_get(const struct ofdpa *ofdpa,
      int port_index)
{
 struct rocker_port *rocker_port;

 rocker_port = ofdpa->rocker->ports[port_index];
 return rocker_port ? rocker_port->wpriv : ((void*)0);
}
