
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint ;
typedef int u64 ;
typedef int u32 ;
struct timespec64 {scalar_t__ tv_nsec; } ;
struct TYPE_4__ {int mask; } ;
struct fec_enet_private {scalar_t__ pps_enable; int reload_period; int next_counter; int tmreg_lock; int pps_channel; scalar_t__ hwp; TYPE_2__ cc; int tc; TYPE_1__* pdev; scalar_t__ hwts_rx_en; scalar_t__ hwts_tx_en; } ;
struct TYPE_3__ {int dev; } ;


 int DEFAULT_PPS_CHANNEL ;
 int EINVAL ;
 scalar_t__ FEC_ATIME ;
 scalar_t__ FEC_ATIME_CTRL ;
 int FEC_HIGH_PULSE ;
 scalar_t__ FEC_TCCR (int ) ;
 scalar_t__ FEC_TCSR (int ) ;
 int FEC_T_CTRL_CAPTURE ;
 int FEC_T_CTRL_PINPER ;
 int FEC_T_TDRE_OFFSET ;
 int FEC_T_TF_MASK ;
 int FEC_T_TF_OFFSET ;
 int FEC_T_TIE_OFFSET ;
 int FEC_T_TMODE_MASK ;
 int FEC_T_TMODE_OFFSET ;
 int NSEC_PER_SEC ;
 int PPS_OUPUT_RELOAD_PERIOD ;
 int dev_err (int *,char*) ;
 struct timespec64 ns_to_timespec64 (int ) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timecounter_cyc2time (int *,int) ;
 int timecounter_read (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int fec_ptp_enable_pps(struct fec_enet_private *fep, uint enable)
{
 unsigned long flags;
 u32 val, tempval;
 struct timespec64 ts;
 u64 ns;
 val = 0;

 if (!(fep->hwts_tx_en || fep->hwts_rx_en)) {
  dev_err(&fep->pdev->dev, "No ptp stack is running\n");
  return -EINVAL;
 }

 if (fep->pps_enable == enable)
  return 0;

 fep->pps_channel = DEFAULT_PPS_CHANNEL;
 fep->reload_period = PPS_OUPUT_RELOAD_PERIOD;

 spin_lock_irqsave(&fep->tmreg_lock, flags);

 if (enable) {


  writel(FEC_T_TF_MASK, fep->hwp + FEC_TCSR(fep->pps_channel));





  val = readl(fep->hwp + FEC_TCSR(fep->pps_channel));
  do {
   val &= ~(FEC_T_TMODE_MASK);
   writel(val, fep->hwp + FEC_TCSR(fep->pps_channel));
   val = readl(fep->hwp + FEC_TCSR(fep->pps_channel));
  } while (val & FEC_T_TMODE_MASK);


  timecounter_read(&fep->tc);







  tempval = readl(fep->hwp + FEC_ATIME_CTRL);
  tempval |= FEC_T_CTRL_CAPTURE;
  writel(tempval, fep->hwp + FEC_ATIME_CTRL);

  tempval = readl(fep->hwp + FEC_ATIME);

  ns = timecounter_cyc2time(&fep->tc, tempval);
  ts = ns_to_timespec64(ns);




  val = NSEC_PER_SEC - (u32)ts.tv_nsec + tempval;
  val += NSEC_PER_SEC;







  val &= fep->cc.mask;
  writel(val, fep->hwp + FEC_TCCR(fep->pps_channel));


  fep->next_counter = (val + fep->reload_period) & fep->cc.mask;


  val = readl(fep->hwp + FEC_ATIME_CTRL);
  val |= FEC_T_CTRL_PINPER;
  writel(val, fep->hwp + FEC_ATIME_CTRL);


  val = readl(fep->hwp + FEC_TCSR(fep->pps_channel));
  val |= (1 << FEC_T_TF_OFFSET | 1 << FEC_T_TIE_OFFSET);
  val &= ~(1 << FEC_T_TDRE_OFFSET);
  val &= ~(FEC_T_TMODE_MASK);
  val |= (FEC_HIGH_PULSE << FEC_T_TMODE_OFFSET);
  writel(val, fep->hwp + FEC_TCSR(fep->pps_channel));




  writel(fep->next_counter, fep->hwp + FEC_TCCR(fep->pps_channel));
  fep->next_counter = (fep->next_counter + fep->reload_period) & fep->cc.mask;
 } else {
  writel(0, fep->hwp + FEC_TCSR(fep->pps_channel));
 }

 fep->pps_enable = enable;
 spin_unlock_irqrestore(&fep->tmreg_lock, flags);

 return 0;
}
