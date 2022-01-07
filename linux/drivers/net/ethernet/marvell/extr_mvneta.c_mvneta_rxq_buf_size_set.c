
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvneta_rx_queue {int id; } ;
struct mvneta_port {int dummy; } ;


 int MVNETA_RXQ_BUF_SIZE_MASK ;
 int MVNETA_RXQ_BUF_SIZE_SHIFT ;
 int MVNETA_RXQ_SIZE_REG (int ) ;
 int mvreg_read (struct mvneta_port*,int ) ;
 int mvreg_write (struct mvneta_port*,int ,int) ;

__attribute__((used)) static void mvneta_rxq_buf_size_set(struct mvneta_port *pp,
        struct mvneta_rx_queue *rxq,
        int buf_size)
{
 u32 val;

 val = mvreg_read(pp, MVNETA_RXQ_SIZE_REG(rxq->id));

 val &= ~MVNETA_RXQ_BUF_SIZE_MASK;
 val |= ((buf_size >> 3) << MVNETA_RXQ_BUF_SIZE_SHIFT);

 mvreg_write(pp, MVNETA_RXQ_SIZE_REG(rxq->id), val);
}
