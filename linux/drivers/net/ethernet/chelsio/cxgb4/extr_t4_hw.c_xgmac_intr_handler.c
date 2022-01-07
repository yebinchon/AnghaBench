
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int chip; } ;
struct adapter {int pdev_dev; TYPE_1__ params; } ;


 int MAC_PORT_INT_CAUSE_A ;
 int PORT_REG (int,int ) ;
 int RXFIFO_PRTY_ERR_F ;
 int T5_PORT_REG (int,int ) ;
 int TXFIFO_PRTY_ERR_F ;
 int XGMAC_PORT_INT_CAUSE_A ;
 int dev_alert (int ,char*,int) ;
 scalar_t__ is_t4 (int ) ;
 int t4_fatal_err (struct adapter*) ;
 int t4_read_reg (struct adapter*,int) ;
 int t4_write_reg (struct adapter*,int,int) ;

__attribute__((used)) static void xgmac_intr_handler(struct adapter *adap, int port)
{
 u32 v, int_cause_reg;

 if (is_t4(adap->params.chip))
  int_cause_reg = PORT_REG(port, XGMAC_PORT_INT_CAUSE_A);
 else
  int_cause_reg = T5_PORT_REG(port, MAC_PORT_INT_CAUSE_A);

 v = t4_read_reg(adap, int_cause_reg);

 v &= TXFIFO_PRTY_ERR_F | RXFIFO_PRTY_ERR_F;
 if (!v)
  return;

 if (v & TXFIFO_PRTY_ERR_F)
  dev_alert(adap->pdev_dev, "XGMAC %d Tx FIFO parity error\n",
     port);
 if (v & RXFIFO_PRTY_ERR_F)
  dev_alert(adap->pdev_dev, "XGMAC %d Rx FIFO parity error\n",
     port);
 t4_write_reg(adap, PORT_REG(port, XGMAC_PORT_INT_CAUSE_A), v);
 t4_fatal_err(adap);
}
