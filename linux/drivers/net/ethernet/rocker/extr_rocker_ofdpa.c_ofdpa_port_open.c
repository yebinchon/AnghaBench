
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_port {struct ofdpa_port* wpriv; } ;
struct ofdpa_port {int dummy; } ;


 int ofdpa_port_fwd_enable (struct ofdpa_port*,int ) ;

__attribute__((used)) static int ofdpa_port_open(struct rocker_port *rocker_port)
{
 struct ofdpa_port *ofdpa_port = rocker_port->wpriv;

 return ofdpa_port_fwd_enable(ofdpa_port, 0);
}
