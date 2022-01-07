
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_port {int * txqs; } ;


 int mvneta_txq_deinit (struct mvneta_port*,int *) ;
 int txq_number ;

__attribute__((used)) static void mvneta_cleanup_txqs(struct mvneta_port *pp)
{
 int queue;

 for (queue = 0; queue < txq_number; queue++)
  mvneta_txq_deinit(pp, &pp->txqs[queue]);
}
