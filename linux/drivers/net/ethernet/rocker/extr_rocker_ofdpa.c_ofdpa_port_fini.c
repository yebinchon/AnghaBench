
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_port {struct ofdpa_port* wpriv; } ;
struct ofdpa_port {int dummy; } ;


 int OFDPA_OP_FLAG_REMOVE ;
 int ofdpa_port_ig_tbl (struct ofdpa_port*,int ) ;

__attribute__((used)) static void ofdpa_port_fini(struct rocker_port *rocker_port)
{
 struct ofdpa_port *ofdpa_port = rocker_port->wpriv;

 ofdpa_port_ig_tbl(ofdpa_port, OFDPA_OP_FLAG_REMOVE);
}
