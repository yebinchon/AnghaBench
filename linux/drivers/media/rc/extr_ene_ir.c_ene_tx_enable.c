
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ene_device {int saved_conf1; scalar_t__ hw_revision; } ;


 int ENE_CIRCFG ;
 int ENE_CIRCFG_RX_EN ;
 int ENE_CIRCFG_TX_EN ;
 int ENE_CIRCFG_TX_IRQ ;
 int ENE_FW2 ;
 int ENE_FW2_EMMITER1_CONN ;
 int ENE_FW2_EMMITER2_CONN ;
 scalar_t__ ENE_HW_C ;
 int dbg (char*) ;
 int ene_read_reg (struct ene_device*,int ) ;
 int ene_write_reg (struct ene_device*,int ,int) ;
 int pr_warn (char*) ;

__attribute__((used)) static void ene_tx_enable(struct ene_device *dev)
{
 u8 conf1 = ene_read_reg(dev, ENE_CIRCFG);
 u8 fwreg2 = ene_read_reg(dev, ENE_FW2);

 dev->saved_conf1 = conf1;


 if (fwreg2 & ENE_FW2_EMMITER1_CONN)
  dbg("TX: Transmitter #1 is connected");

 if (fwreg2 & ENE_FW2_EMMITER2_CONN)
  dbg("TX: Transmitter #2 is connected");

 if (!(fwreg2 & (ENE_FW2_EMMITER1_CONN | ENE_FW2_EMMITER2_CONN)))
  pr_warn("TX: transmitter cable isn't connected!\n");


 if (dev->hw_revision == ENE_HW_C)
  conf1 &= ~ENE_CIRCFG_RX_EN;


 conf1 |= ENE_CIRCFG_TX_EN | ENE_CIRCFG_TX_IRQ;
 ene_write_reg(dev, ENE_CIRCFG, conf1);
}
