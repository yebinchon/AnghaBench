
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvneta_rx_queue {int id; } ;
struct mvneta_port {int dummy; } ;


 int MVNETA_RXQ_CONFIG_REG (int ) ;
 int MVNETA_RXQ_HW_BUF_ALLOC ;
 int mvreg_read (struct mvneta_port*,int ) ;
 int mvreg_write (struct mvneta_port*,int ,int ) ;

__attribute__((used)) static void mvneta_rxq_bm_enable(struct mvneta_port *pp,
     struct mvneta_rx_queue *rxq)
{
 u32 val;

 val = mvreg_read(pp, MVNETA_RXQ_CONFIG_REG(rxq->id));
 val |= MVNETA_RXQ_HW_BUF_ALLOC;
 mvreg_write(pp, MVNETA_RXQ_CONFIG_REG(rxq->id), val);
}
