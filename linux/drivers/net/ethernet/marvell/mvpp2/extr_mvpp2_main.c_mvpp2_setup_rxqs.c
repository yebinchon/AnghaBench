
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_port {int nrxqs; int * rxqs; } ;


 int mvpp2_cleanup_rxqs (struct mvpp2_port*) ;
 int mvpp2_rxq_init (struct mvpp2_port*,int ) ;

__attribute__((used)) static int mvpp2_setup_rxqs(struct mvpp2_port *port)
{
 int queue, err;

 for (queue = 0; queue < port->nrxqs; queue++) {
  err = mvpp2_rxq_init(port, port->rxqs[queue]);
  if (err)
   goto err_cleanup;
 }
 return 0;

err_cleanup:
 mvpp2_cleanup_rxqs(port);
 return err;
}
