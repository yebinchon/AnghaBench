
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int DriverLock; scalar_t__ ResetRequested; } ;
struct TYPE_3__ {int is_imask; } ;
struct s_smc {TYPE_2__ os; TYPE_1__ hw; } ;
struct net_device {int dummy; } ;
typedef TYPE_2__ skfddi_priv ;
typedef int irqreturn_t ;


 int ADDR (int ) ;
 int B0_IMSK ;
 int CLI_FBI () ;
 scalar_t__ FALSE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISR_A ;
 int ResetAdapter (struct s_smc*) ;
 int STI_FBI () ;
 int fddi_isr (struct s_smc*) ;
 int inpd (int ) ;
 struct s_smc* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t skfp_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct s_smc *smc;
 skfddi_priv *bp;

 smc = netdev_priv(dev);
 bp = &smc->os;


 if (inpd(ADDR(B0_IMSK)) == 0) {

  return IRQ_NONE;
 }

 if ((inpd(ISR_A) & smc->hw.is_imask) == 0) {

  return IRQ_NONE;
 }
 CLI_FBI();
 spin_lock(&bp->DriverLock);


 fddi_isr(smc);

 if (smc->os.ResetRequested) {
  ResetAdapter(smc);
  smc->os.ResetRequested = FALSE;
 }
 spin_unlock(&bp->DriverLock);
 STI_FBI();

 return IRQ_HANDLED;
}
