
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2 {int dummy; } ;


 int MVPP2_MAX_PORTS ;
 int MVPP2_RX_ATTR_FIFO_SIZE_REG (int) ;
 int MVPP2_RX_DATA_FIFO_SIZE_REG (int) ;
 int MVPP2_RX_FIFO_INIT_REG ;
 int MVPP2_RX_FIFO_PORT_ATTR_SIZE_4KB ;
 int MVPP2_RX_FIFO_PORT_DATA_SIZE_4KB ;
 int MVPP2_RX_FIFO_PORT_MIN_PKT ;
 int MVPP2_RX_MIN_PKT_SIZE_REG ;
 int mvpp2_write (struct mvpp2*,int ,int) ;

__attribute__((used)) static void mvpp2_rx_fifo_init(struct mvpp2 *priv)
{
 int port;

 for (port = 0; port < MVPP2_MAX_PORTS; port++) {
  mvpp2_write(priv, MVPP2_RX_DATA_FIFO_SIZE_REG(port),
       MVPP2_RX_FIFO_PORT_DATA_SIZE_4KB);
  mvpp2_write(priv, MVPP2_RX_ATTR_FIFO_SIZE_REG(port),
       MVPP2_RX_FIFO_PORT_ATTR_SIZE_4KB);
 }

 mvpp2_write(priv, MVPP2_RX_MIN_PKT_SIZE_REG,
      MVPP2_RX_FIFO_PORT_MIN_PKT);
 mvpp2_write(priv, MVPP2_RX_FIFO_INIT_REG, 0x1);
}
