
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvneta_rx_queue {int id; } ;
struct mvneta_port {int dummy; } ;


 int MVNETA_RXQ_OCCUPIED_ALL_MASK ;
 int MVNETA_RXQ_STATUS_REG (int ) ;
 int mvreg_read (struct mvneta_port*,int ) ;

__attribute__((used)) static int mvneta_rxq_busy_desc_num_get(struct mvneta_port *pp,
     struct mvneta_rx_queue *rxq)
{
 u32 val;

 val = mvreg_read(pp, MVNETA_RXQ_STATUS_REG(rxq->id));
 return val & MVNETA_RXQ_OCCUPIED_ALL_MASK;
}
