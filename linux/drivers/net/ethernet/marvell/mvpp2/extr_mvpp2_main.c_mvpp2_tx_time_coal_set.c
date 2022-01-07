
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mvpp2_port {int id; TYPE_1__* priv; int tx_time_coal; } ;
struct TYPE_2__ {unsigned long tclk; } ;


 int MVPP2_ISR_TX_THRESHOLD_REG (int ) ;
 scalar_t__ MVPP2_MAX_ISR_TX_THRESHOLD ;
 int mvpp2_cycles_to_usec (scalar_t__,unsigned long) ;
 scalar_t__ mvpp2_usec_to_cycles (int ,unsigned long) ;
 int mvpp2_write (TYPE_1__*,int ,scalar_t__) ;

__attribute__((used)) static void mvpp2_tx_time_coal_set(struct mvpp2_port *port)
{
 unsigned long freq = port->priv->tclk;
 u32 val = mvpp2_usec_to_cycles(port->tx_time_coal, freq);

 if (val > MVPP2_MAX_ISR_TX_THRESHOLD) {
  port->tx_time_coal =
   mvpp2_cycles_to_usec(MVPP2_MAX_ISR_TX_THRESHOLD, freq);


  val = mvpp2_usec_to_cycles(port->tx_time_coal, freq);
 }

 mvpp2_write(port->priv, MVPP2_ISR_TX_THRESHOLD_REG(port->id), val);
}
