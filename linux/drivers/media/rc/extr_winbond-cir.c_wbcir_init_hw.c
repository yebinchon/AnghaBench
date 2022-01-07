
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbcir_data {int txmask; int txcarrier; scalar_t__ txstate; int * txbuf; int dev; int rxstate; scalar_t__ sbase; scalar_t__ ebase; scalar_t__ wbase; } ;


 int WBCIR_BANK_0 ;
 int WBCIR_BANK_2 ;
 int WBCIR_BANK_4 ;
 int WBCIR_BANK_5 ;
 int WBCIR_BANK_6 ;
 int WBCIR_BANK_7 ;
 int WBCIR_EXT_ENABLE ;
 int WBCIR_IRQ_ERR ;
 int WBCIR_IRQ_NONE ;
 int WBCIR_IRQ_RX ;
 int WBCIR_IRTX_INV ;
 scalar_t__ WBCIR_REG_ECEIR_CCTL ;
 scalar_t__ WBCIR_REG_ECEIR_CTS ;
 scalar_t__ WBCIR_REG_SP3_ASCR ;
 scalar_t__ WBCIR_REG_SP3_BGDH ;
 scalar_t__ WBCIR_REG_SP3_BGDL ;
 scalar_t__ WBCIR_REG_SP3_EXCR1 ;
 scalar_t__ WBCIR_REG_SP3_EXCR2 ;
 scalar_t__ WBCIR_REG_SP3_FCR ;
 scalar_t__ WBCIR_REG_SP3_IRCFG4 ;
 scalar_t__ WBCIR_REG_SP3_IRCR1 ;
 scalar_t__ WBCIR_REG_SP3_IRCR2 ;
 scalar_t__ WBCIR_REG_SP3_IRCR3 ;
 scalar_t__ WBCIR_REG_SP3_IRRXDC ;
 scalar_t__ WBCIR_REG_SP3_IRTXMC ;
 scalar_t__ WBCIR_REG_SP3_LSR ;
 scalar_t__ WBCIR_REG_SP3_MCR ;
 scalar_t__ WBCIR_REG_SP3_MSR ;
 scalar_t__ WBCIR_REG_SP3_RCCFG ;
 scalar_t__ WBCIR_REG_WCEIR_CFG1 ;
 scalar_t__ WBCIR_REG_WCEIR_CTL ;
 scalar_t__ WBCIR_REG_WCEIR_EV_EN ;
 scalar_t__ WBCIR_REG_WCEIR_STS ;
 int WBCIR_RXSTATE_INACTIVE ;
 scalar_t__ WBCIR_TXSTATE_ACTIVE ;
 scalar_t__ WBCIR_TXSTATE_INACTIVE ;
 int inb (scalar_t__) ;
 scalar_t__ invert ;
 int kfree (int *) ;
 int outb (int,scalar_t__) ;
 scalar_t__ txandrx ;
 int wbcir_idle_rx (int ,int) ;
 int wbcir_select_bank (struct wbcir_data*,int ) ;
 int wbcir_set_bits (scalar_t__,int,int) ;
 int wbcir_set_irqmask (struct wbcir_data*,int) ;

__attribute__((used)) static void
wbcir_init_hw(struct wbcir_data *data)
{

 wbcir_set_irqmask(data, WBCIR_IRQ_NONE);


 wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_CTL, invert ? 8 : 0, 0x09);


 wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_STS, 0x17, 0x17);


 wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_EV_EN, 0x00, 0x07);


 wbcir_set_bits(data->wbase + WBCIR_REG_WCEIR_CFG1, 0x4A, 0x7F);


 if (invert)
  outb(WBCIR_IRTX_INV, data->ebase + WBCIR_REG_ECEIR_CCTL);
 else
  outb(0x00, data->ebase + WBCIR_REG_ECEIR_CCTL);





 outb(0x10, data->ebase + WBCIR_REG_ECEIR_CTS);
 data->txmask = 0x1;


 wbcir_select_bank(data, WBCIR_BANK_2);
 outb(WBCIR_EXT_ENABLE, data->sbase + WBCIR_REG_SP3_EXCR1);
 outb(0x30, data->sbase + WBCIR_REG_SP3_EXCR2);


 outb(0x0f, data->sbase + WBCIR_REG_SP3_BGDL);
 outb(0x00, data->sbase + WBCIR_REG_SP3_BGDH);


 wbcir_select_bank(data, WBCIR_BANK_0);
 outb(0xC0, data->sbase + WBCIR_REG_SP3_MCR);
 inb(data->sbase + WBCIR_REG_SP3_LSR);
 inb(data->sbase + WBCIR_REG_SP3_MSR);


 wbcir_select_bank(data, WBCIR_BANK_7);
 outb(0x90, data->sbase + WBCIR_REG_SP3_RCCFG);


 wbcir_select_bank(data, WBCIR_BANK_4);
 outb(0x00, data->sbase + WBCIR_REG_SP3_IRCR1);


 wbcir_select_bank(data, WBCIR_BANK_5);
 outb(txandrx ? 0x03 : 0x02, data->sbase + WBCIR_REG_SP3_IRCR2);


 wbcir_select_bank(data, WBCIR_BANK_6);
 outb(0x20, data->sbase + WBCIR_REG_SP3_IRCR3);


 wbcir_select_bank(data, WBCIR_BANK_7);
 outb(0xF2, data->sbase + WBCIR_REG_SP3_IRRXDC);


 outb(0x69, data->sbase + WBCIR_REG_SP3_IRTXMC);
 data->txcarrier = 36000;


 if (invert)
  outb(0x10, data->sbase + WBCIR_REG_SP3_IRCFG4);
 else
  outb(0x00, data->sbase + WBCIR_REG_SP3_IRCFG4);


 wbcir_select_bank(data, WBCIR_BANK_0);
 outb(0x97, data->sbase + WBCIR_REG_SP3_FCR);


 outb(0xE0, data->sbase + WBCIR_REG_SP3_ASCR);


 data->rxstate = WBCIR_RXSTATE_INACTIVE;
 wbcir_idle_rx(data->dev, 1);


 if (data->txstate == WBCIR_TXSTATE_ACTIVE) {
  kfree(data->txbuf);
  data->txbuf = ((void*)0);
  data->txstate = WBCIR_TXSTATE_INACTIVE;
 }


 wbcir_set_irqmask(data, WBCIR_IRQ_RX | WBCIR_IRQ_ERR);
}
