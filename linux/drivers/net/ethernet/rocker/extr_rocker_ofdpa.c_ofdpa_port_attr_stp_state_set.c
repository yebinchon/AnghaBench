
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rocker_port {struct ofdpa_port* wpriv; } ;
struct ofdpa_port {int dummy; } ;


 int ofdpa_port_stp_update (struct ofdpa_port*,int ,int ) ;

__attribute__((used)) static int ofdpa_port_attr_stp_state_set(struct rocker_port *rocker_port,
      u8 state)
{
 struct ofdpa_port *ofdpa_port = rocker_port->wpriv;

 return ofdpa_port_stp_update(ofdpa_port, 0, state);
}
