
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_rx_queue {scalar_t__ pkts_coal; scalar_t__ id; } ;
struct mvpp2_port {int priv; } ;


 scalar_t__ MVPP2_OCCUPIED_THRESH_MASK ;
 int MVPP2_RXQ_NUM_REG ;
 int MVPP2_RXQ_THRESH_REG ;
 int get_cpu () ;
 unsigned int mvpp2_cpu_to_thread (int ,int ) ;
 int mvpp2_thread_write (int ,unsigned int,int ,scalar_t__) ;
 int put_cpu () ;

__attribute__((used)) static void mvpp2_rx_pkts_coal_set(struct mvpp2_port *port,
       struct mvpp2_rx_queue *rxq)
{
 unsigned int thread = mvpp2_cpu_to_thread(port->priv, get_cpu());

 if (rxq->pkts_coal > MVPP2_OCCUPIED_THRESH_MASK)
  rxq->pkts_coal = MVPP2_OCCUPIED_THRESH_MASK;

 mvpp2_thread_write(port->priv, thread, MVPP2_RXQ_NUM_REG, rxq->id);
 mvpp2_thread_write(port->priv, thread, MVPP2_RXQ_THRESH_REG,
      rxq->pkts_coal);

 put_cpu();
}
