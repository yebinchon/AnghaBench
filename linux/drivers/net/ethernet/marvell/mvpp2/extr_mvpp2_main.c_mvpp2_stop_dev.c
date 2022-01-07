
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvpp2_port {int nqvecs; int comphy; scalar_t__ phylink; TYPE_1__* qvecs; } ;
struct TYPE_2__ {int napi; } ;


 int mvpp2_interrupts_disable (struct mvpp2_port*) ;
 int napi_disable (int *) ;
 int phy_power_off (int ) ;
 int phylink_stop (scalar_t__) ;

__attribute__((used)) static void mvpp2_stop_dev(struct mvpp2_port *port)
{
 int i;


 mvpp2_interrupts_disable(port);

 for (i = 0; i < port->nqvecs; i++)
  napi_disable(&port->qvecs[i].napi);

 if (port->phylink)
  phylink_stop(port->phylink);
 phy_power_off(port->comphy);
}
