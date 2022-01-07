
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvneta_tx_queue {int dummy; } ;
struct mvneta_port {struct mvneta_tx_queue* txqs; } ;


 int fls (int ) ;

__attribute__((used)) static struct mvneta_tx_queue *mvneta_tx_done_policy(struct mvneta_port *pp,
           u32 cause)
{
 int queue = fls(cause) - 1;

 return &pp->txqs[queue];
}
