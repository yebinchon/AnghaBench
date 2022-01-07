
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tx_packets; int tx_errors; } ;
struct net_device {unsigned int base_addr; TYPE_1__ stats; } ;
struct TYPE_6__ {unsigned char xmtrc; int mpco; int rntpco; int rcvcco; int cerr; int babl; int jab; int rtry; int lcar; int defer; int one; int more; int lcol; int uflo; int xmtsv; int exdef; } ;
struct TYPE_7__ {TYPE_2__ mace_stats; int tx_free_frames; scalar_t__ tx_irq_disabled; } ;
typedef TYPE_3__ mace_private ;
typedef int irqreturn_t ;


 scalar_t__ AM2150_MACE_BASE ;
 scalar_t__ AM2150_XMT_SKIP ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ MACE_FIFOFC ;
 unsigned char MACE_FIFOFC_XMTFC ;
 scalar_t__ MACE_IMR ;
 int MACE_IMR_DEFAULT ;
 scalar_t__ MACE_IR ;
 int MACE_IR_BABL ;
 int MACE_IR_CERR ;
 int MACE_IR_JAB ;
 int MACE_IR_MPCO ;
 int MACE_IR_RCVCCO ;
 int MACE_IR_RCVINT ;
 int MACE_IR_RNTPCO ;
 int MACE_IR_XMTINT ;
 int MACE_MAX_IR_ITERATIONS ;
 int MACE_MAX_RX_ITERATIONS ;
 scalar_t__ MACE_XMTFS ;
 unsigned char MACE_XMTFS_DEFER ;
 unsigned char MACE_XMTFS_LCAR ;
 unsigned char MACE_XMTFS_LCOL ;
 unsigned char MACE_XMTFS_MORE ;
 unsigned char MACE_XMTFS_ONE ;
 unsigned char MACE_XMTFS_RTRY ;
 unsigned char MACE_XMTFS_UFLO ;
 unsigned char MACE_XMTFS_XMTSV ;
 scalar_t__ MACE_XMTRC ;
 unsigned char MACE_XMTRC_EXDEF ;
 unsigned char MACE_XMTRC_XMTRC ;
 void* inb (scalar_t__) ;
 int mace_rx (struct net_device*,int ) ;
 int netdev_dbg (struct net_device*,char*) ;
 int netdev_notice (struct net_device*,char*,char const*,void*,void*) ;
 TYPE_3__* netdev_priv (struct net_device*) ;
 int netif_device_present (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int outb (int,scalar_t__) ;
 int pr_debug (char*,int,...) ;

__attribute__((used)) static irqreturn_t mace_interrupt(int irq, void *dev_id)
{
  struct net_device *dev = (struct net_device *) dev_id;
  mace_private *lp = netdev_priv(dev);
  unsigned int ioaddr;
  int status;
  int IntrCnt = MACE_MAX_IR_ITERATIONS;

  if (dev == ((void*)0)) {
    pr_debug("mace_interrupt(): irq 0x%X for unknown device.\n",
   irq);
    return IRQ_NONE;
  }

  ioaddr = dev->base_addr;

  if (lp->tx_irq_disabled) {
    const char *msg;
    if (lp->tx_irq_disabled)
      msg = "Interrupt with tx_irq_disabled";
    else
      msg = "Re-entering the interrupt handler";
    netdev_notice(dev, "%s [isr=%02X, imr=%02X]\n",
    msg,
    inb(ioaddr + AM2150_MACE_BASE + MACE_IR),
    inb(ioaddr + AM2150_MACE_BASE + MACE_IMR));

    return IRQ_NONE;
  }

  if (!netif_device_present(dev)) {
    netdev_dbg(dev, "interrupt from dead card\n");
    return IRQ_NONE;
  }

  do {

    status = inb(ioaddr + AM2150_MACE_BASE + MACE_IR);
    if (!(status & ~MACE_IMR_DEFAULT) && IntrCnt == MACE_MAX_IR_ITERATIONS)
      return IRQ_NONE;

    pr_debug("mace_interrupt: irq 0x%X status 0x%X.\n", irq, status);

    if (status & MACE_IR_RCVINT) {
      mace_rx(dev, MACE_MAX_RX_ITERATIONS);
    }

    if (status & MACE_IR_XMTINT) {
      unsigned char fifofc;
      unsigned char xmtrc;
      unsigned char xmtfs;

      fifofc = inb(ioaddr + AM2150_MACE_BASE + MACE_FIFOFC);
      if ((fifofc & MACE_FIFOFC_XMTFC)==0) {
 dev->stats.tx_errors++;
 outb(0xFF, ioaddr + AM2150_XMT_SKIP);
      }


      xmtrc = inb(ioaddr + AM2150_MACE_BASE + MACE_XMTRC);
      if (xmtrc & MACE_XMTRC_EXDEF) lp->mace_stats.exdef++;
      lp->mace_stats.xmtrc += (xmtrc & MACE_XMTRC_XMTRC);

      if (
        (xmtfs = inb(ioaddr + AM2150_MACE_BASE + MACE_XMTFS)) &
        MACE_XMTFS_XMTSV
      ) {
 lp->mace_stats.xmtsv++;

 if (xmtfs & ~MACE_XMTFS_XMTSV) {
   if (xmtfs & MACE_XMTFS_UFLO) {


     lp->mace_stats.uflo++;
   }
   if (xmtfs & MACE_XMTFS_LCOL) {

     lp->mace_stats.lcol++;
   }
   if (xmtfs & MACE_XMTFS_MORE) {

     lp->mace_stats.more++;
   }
   if (xmtfs & MACE_XMTFS_ONE) {

     lp->mace_stats.one++;
   }
   if (xmtfs & MACE_XMTFS_DEFER) {

     lp->mace_stats.defer++;
   }
   if (xmtfs & MACE_XMTFS_LCAR) {

     lp->mace_stats.lcar++;
   }
   if (xmtfs & MACE_XMTFS_RTRY) {

     lp->mace_stats.rtry++;
   }
        }

      }

      dev->stats.tx_packets++;
      lp->tx_free_frames++;
      netif_wake_queue(dev);
    }

    if (status & ~MACE_IMR_DEFAULT & ~MACE_IR_RCVINT & ~MACE_IR_XMTINT) {
      if (status & MACE_IR_JAB) {

        lp->mace_stats.jab++;
      }
      if (status & MACE_IR_BABL) {

        lp->mace_stats.babl++;
      }
      if (status & MACE_IR_CERR) {



        lp->mace_stats.cerr++;
      }
      if (status & MACE_IR_RCVCCO) {

        lp->mace_stats.rcvcco++;
      }
      if (status & MACE_IR_RNTPCO) {

        lp->mace_stats.rntpco++;
      }
      if (status & MACE_IR_MPCO) {

        lp->mace_stats.mpco++;
      }
    }

  } while ((status & ~MACE_IMR_DEFAULT) && (--IntrCnt));

  return IRQ_HANDLED;
}
