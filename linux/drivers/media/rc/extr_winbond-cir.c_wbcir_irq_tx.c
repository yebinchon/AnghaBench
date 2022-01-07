
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wbcir_data {scalar_t__* txbuf; int txstate; size_t txoff; size_t txlen; scalar_t__ sbase; } ;


 int WBCIR_IRQ_ERR ;
 int WBCIR_IRQ_RX ;
 int WBCIR_IRQ_TX_EMPTY ;
 int WBCIR_IRQ_TX_LOW ;
 scalar_t__ WBCIR_REG_SP3_ASCR ;
 scalar_t__ WBCIR_REG_SP3_RXDATA ;
 scalar_t__ WBCIR_REG_SP3_TXDATA ;



 int WBCIR_TX_EOT ;
 int WBCIR_TX_UNDERRUN ;
 int kfree (scalar_t__*) ;
 int min (int ,scalar_t__) ;
 int outb (int,scalar_t__) ;
 int outsb (scalar_t__,int*,unsigned int) ;
 int wbcir_set_irqmask (struct wbcir_data*,int) ;

__attribute__((used)) static void
wbcir_irq_tx(struct wbcir_data *data)
{
 unsigned int space;
 unsigned int used;
 u8 bytes[16];
 u8 byte;

 if (!data->txbuf)
  return;

 switch (data->txstate) {
 case 128:

  space = 16;
  break;
 case 130:

  space = 13;
  break;
 case 129:
  space = 0;
  break;
 default:
  return;
 }






 for (used = 0; used < space && data->txoff != data->txlen; used++) {
  if (data->txbuf[data->txoff] == 0) {
   data->txoff++;
   continue;
  }
  byte = min((u32)0x80, data->txbuf[data->txoff]);
  data->txbuf[data->txoff] -= byte;
  byte--;
  byte |= (data->txoff % 2 ? 0x80 : 0x00);
  bytes[used] = byte;
 }

 while (data->txoff != data->txlen && data->txbuf[data->txoff] == 0)
  data->txoff++;

 if (used == 0) {

  if (data->txstate == 129)

   outb(WBCIR_TX_UNDERRUN, data->sbase + WBCIR_REG_SP3_ASCR);
  wbcir_set_irqmask(data, WBCIR_IRQ_RX | WBCIR_IRQ_ERR);
  kfree(data->txbuf);
  data->txbuf = ((void*)0);
  data->txstate = 128;
 } else if (data->txoff == data->txlen) {

  outsb(data->sbase + WBCIR_REG_SP3_TXDATA, bytes, used - 1);
  outb(WBCIR_TX_EOT, data->sbase + WBCIR_REG_SP3_ASCR);
  outb(bytes[used - 1], data->sbase + WBCIR_REG_SP3_TXDATA);
  wbcir_set_irqmask(data, WBCIR_IRQ_RX | WBCIR_IRQ_ERR |
      WBCIR_IRQ_TX_EMPTY);
 } else {

  outsb(data->sbase + WBCIR_REG_SP3_RXDATA, bytes, used);
  if (data->txstate == 128) {
   wbcir_set_irqmask(data, WBCIR_IRQ_RX | WBCIR_IRQ_ERR |
       WBCIR_IRQ_TX_LOW);
   data->txstate = 130;
  }
 }
}
