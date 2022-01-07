
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ptp_clock_event {int type; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int mask; } ;
struct fec_enet_private {int next_counter; int reload_period; int ptp_clock; TYPE_1__ cc; scalar_t__ hwp; int pps_channel; } ;
typedef int irqreturn_t ;


 scalar_t__ FEC_TCCR (int ) ;
 scalar_t__ FEC_TCSR (int ) ;
 int FEC_T_TF_MASK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PTP_CLOCK_PPS ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int ptp_clock_event (int ,struct ptp_clock_event*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t fec_pps_interrupt(int irq, void *dev_id)
{
 struct net_device *ndev = dev_id;
 struct fec_enet_private *fep = netdev_priv(ndev);
 u32 val;
 u8 channel = fep->pps_channel;
 struct ptp_clock_event event;

 val = readl(fep->hwp + FEC_TCSR(channel));
 if (val & FEC_T_TF_MASK) {



  writel(fep->next_counter, fep->hwp + FEC_TCCR(channel));
  do {
   writel(val, fep->hwp + FEC_TCSR(channel));
  } while (readl(fep->hwp + FEC_TCSR(channel)) & FEC_T_TF_MASK);


  fep->next_counter = (fep->next_counter + fep->reload_period) &
    fep->cc.mask;

  event.type = PTP_CLOCK_PPS;
  ptp_clock_event(fep->ptp_clock, &event);
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
