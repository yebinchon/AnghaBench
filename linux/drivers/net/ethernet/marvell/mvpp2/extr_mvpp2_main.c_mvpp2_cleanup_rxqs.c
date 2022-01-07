
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_port {int nrxqs; int * rxqs; } ;


 int mvpp2_rxq_deinit (struct mvpp2_port*,int ) ;

__attribute__((used)) static void mvpp2_cleanup_rxqs(struct mvpp2_port *port)
{
 int queue;

 for (queue = 0; queue < port->nrxqs; queue++)
  mvpp2_rxq_deinit(port, port->rxqs[queue]);
}
