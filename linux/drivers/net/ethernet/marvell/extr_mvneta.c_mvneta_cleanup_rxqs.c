
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_port {int * rxqs; } ;


 int mvneta_rxq_deinit (struct mvneta_port*,int *) ;
 int rxq_number ;

__attribute__((used)) static void mvneta_cleanup_rxqs(struct mvneta_port *pp)
{
 int queue;

 for (queue = 0; queue < rxq_number; queue++)
  mvneta_rxq_deinit(pp, &pp->rxqs[queue]);
}
