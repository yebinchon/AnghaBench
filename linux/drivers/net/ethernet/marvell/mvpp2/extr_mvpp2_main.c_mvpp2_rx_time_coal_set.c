
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mvpp2_rx_queue {int id; int time_coal; } ;
struct mvpp2_port {TYPE_1__* priv; } ;
struct TYPE_2__ {unsigned long tclk; } ;


 int MVPP2_ISR_RX_THRESHOLD_REG (int ) ;
 scalar_t__ MVPP2_MAX_ISR_RX_THRESHOLD ;
 int mvpp2_cycles_to_usec (scalar_t__,unsigned long) ;
 scalar_t__ mvpp2_usec_to_cycles (int ,unsigned long) ;
 int mvpp2_write (TYPE_1__*,int ,scalar_t__) ;

__attribute__((used)) static void mvpp2_rx_time_coal_set(struct mvpp2_port *port,
       struct mvpp2_rx_queue *rxq)
{
 unsigned long freq = port->priv->tclk;
 u32 val = mvpp2_usec_to_cycles(rxq->time_coal, freq);

 if (val > MVPP2_MAX_ISR_RX_THRESHOLD) {
  rxq->time_coal =
   mvpp2_cycles_to_usec(MVPP2_MAX_ISR_RX_THRESHOLD, freq);


  val = mvpp2_usec_to_cycles(rxq->time_coal, freq);
 }

 mvpp2_write(port->priv, MVPP2_ISR_RX_THRESHOLD_REG(rxq->id), val);
}
