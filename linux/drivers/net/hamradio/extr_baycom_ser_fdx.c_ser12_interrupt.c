
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct timespec64 {int dummy; } ;
struct net_device {int base_addr; } ;
struct TYPE_11__ {scalar_t__ magic; } ;
struct TYPE_9__ {int tx_bit; int txshreg; } ;
struct TYPE_10__ {int ptt; TYPE_1__ ser12; } ;
struct baycom_state {unsigned char opt_dcd; int baud_uartdiv; TYPE_3__ hdrv; TYPE_2__ modem; } ;
typedef int irqreturn_t ;


 scalar_t__ HDLCDRV_MAGIC ;
 int IIR (int ) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int LSR (int ) ;
 int MCR (int ) ;
 int MSR (int ) ;
 int RBR (int ) ;
 int THR (int ) ;
 int baycom_int_freq (struct baycom_state*) ;
 int hdlcdrv_arbitrate (struct net_device*,TYPE_3__*) ;
 int hdlcdrv_getbits (TYPE_3__*) ;
 scalar_t__ hdlcdrv_ptt (TYPE_3__*) ;
 int hdlcdrv_receiver (struct net_device*,TYPE_3__*) ;
 int hdlcdrv_setdcd (TYPE_3__*,int) ;
 int hdlcdrv_transmitter (struct net_device*,TYPE_3__*) ;
 unsigned char inb (int ) ;
 int ktime_get_ts64 (struct timespec64*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 struct baycom_state* netdev_priv (struct net_device*) ;
 int outb (int,int ) ;
 int ser12_rx (struct net_device*,struct baycom_state*,struct timespec64*,unsigned char) ;
 int ser12_set_divisor (struct net_device*,int) ;

__attribute__((used)) static irqreturn_t ser12_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = (struct net_device *)dev_id;
 struct baycom_state *bc = netdev_priv(dev);
 struct timespec64 ts;
 unsigned char iir, msr;
 unsigned int txcount = 0;

 if (!bc || bc->hdrv.magic != HDLCDRV_MAGIC)
  return IRQ_NONE;

 if ((iir = inb(IIR(dev->base_addr))) & 1)
  return IRQ_NONE;

 ktime_get_ts64(&ts);
 msr = inb(MSR(dev->base_addr));

 if ((msr & 8) && bc->opt_dcd)
  hdlcdrv_setdcd(&bc->hdrv, !((msr ^ bc->opt_dcd) & 0x80));
 do {
  switch (iir & 6) {
  case 6:
   inb(LSR(dev->base_addr));
   break;

  case 4:
   inb(RBR(dev->base_addr));
   break;

  case 2:





   outb(0x00, THR(dev->base_addr));
   baycom_int_freq(bc);
   txcount++;




   if (bc->modem.ptt)
    outb(0x0e | (!!bc->modem.ser12.tx_bit), MCR(dev->base_addr));
   else
    outb(0x0d, MCR(dev->base_addr));
   break;

  default:
   msr = inb(MSR(dev->base_addr));

   if ((msr & 8) && bc->opt_dcd)
    hdlcdrv_setdcd(&bc->hdrv, !((msr ^ bc->opt_dcd) & 0x80));
   break;
  }
  iir = inb(IIR(dev->base_addr));
 } while (!(iir & 1));
 ser12_rx(dev, bc, &ts, msr & 0x10);
 if (bc->modem.ptt && txcount) {
  if (bc->modem.ser12.txshreg <= 1) {
   bc->modem.ser12.txshreg = 0x10000 | hdlcdrv_getbits(&bc->hdrv);
   if (!hdlcdrv_ptt(&bc->hdrv)) {
    ser12_set_divisor(dev, 115200/100/8);
    bc->modem.ptt = 0;
    goto end_transmit;
   }
  }
  bc->modem.ser12.tx_bit = !(bc->modem.ser12.tx_bit ^ (bc->modem.ser12.txshreg & 1));
  bc->modem.ser12.txshreg >>= 1;
 }
 end_transmit:
 local_irq_enable();
 if (!bc->modem.ptt && txcount) {
  hdlcdrv_arbitrate(dev, &bc->hdrv);
  if (hdlcdrv_ptt(&bc->hdrv)) {
   ser12_set_divisor(dev, bc->baud_uartdiv);
   bc->modem.ser12.txshreg = 1;
   bc->modem.ptt = 1;
  }
 }
 hdlcdrv_transmitter(dev, &bc->hdrv);
 hdlcdrv_receiver(dev, &bc->hdrv);
 local_irq_disable();
 return IRQ_HANDLED;
}
