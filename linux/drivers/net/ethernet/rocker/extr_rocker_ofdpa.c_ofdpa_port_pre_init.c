
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rocker_port {int pport; int dev; TYPE_1__* rocker; struct ofdpa_port* wpriv; } ;
struct ofdpa_port {int ageing_time; int brport_flags; int pport; int dev; struct rocker_port* rocker_port; int ofdpa; } ;
struct TYPE_2__ {int wpriv; } ;


 int BR_DEFAULT_AGEING_TIME ;
 int BR_LEARNING ;

__attribute__((used)) static int ofdpa_port_pre_init(struct rocker_port *rocker_port)
{
 struct ofdpa_port *ofdpa_port = rocker_port->wpriv;

 ofdpa_port->ofdpa = rocker_port->rocker->wpriv;
 ofdpa_port->rocker_port = rocker_port;
 ofdpa_port->dev = rocker_port->dev;
 ofdpa_port->pport = rocker_port->pport;
 ofdpa_port->brport_flags = BR_LEARNING;
 ofdpa_port->ageing_time = BR_DEFAULT_AGEING_TIME;
 return 0;
}
