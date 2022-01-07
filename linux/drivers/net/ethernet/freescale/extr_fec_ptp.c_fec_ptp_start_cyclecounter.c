
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int shift; int mult; int mask; int read; } ;
struct fec_enet_private {int cycle_speed; int tmreg_lock; TYPE_1__ cc; int tc; scalar_t__ hwp; } ;


 int CLOCKSOURCE_MASK (int) ;
 scalar_t__ FEC_ATIME_CTRL ;
 scalar_t__ FEC_ATIME_EVT_PERIOD ;
 scalar_t__ FEC_ATIME_INC ;
 int FEC_CC_MULT ;
 int FEC_COUNTER_PERIOD ;
 int FEC_T_CTRL_ENABLE ;
 int FEC_T_CTRL_PERIOD_RST ;
 int FEC_T_INC_OFFSET ;
 int fec_ptp_read ;
 int ktime_get_real () ;
 int ktime_to_ns (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timecounter_init (int *,TYPE_1__*,int ) ;
 int writel (int,scalar_t__) ;

void fec_ptp_start_cyclecounter(struct net_device *ndev)
{
 struct fec_enet_private *fep = netdev_priv(ndev);
 unsigned long flags;
 int inc;

 inc = 1000000000 / fep->cycle_speed;


 spin_lock_irqsave(&fep->tmreg_lock, flags);


 writel(inc << FEC_T_INC_OFFSET, fep->hwp + FEC_ATIME_INC);


 writel(FEC_COUNTER_PERIOD, fep->hwp + FEC_ATIME_EVT_PERIOD);

 writel(FEC_T_CTRL_ENABLE | FEC_T_CTRL_PERIOD_RST,
  fep->hwp + FEC_ATIME_CTRL);

 memset(&fep->cc, 0, sizeof(fep->cc));
 fep->cc.read = fec_ptp_read;
 fep->cc.mask = CLOCKSOURCE_MASK(31);
 fep->cc.shift = 31;
 fep->cc.mult = FEC_CC_MULT;


 timecounter_init(&fep->tc, &fep->cc, ktime_to_ns(ktime_get_real()));

 spin_unlock_irqrestore(&fep->tmreg_lock, flags);
}
