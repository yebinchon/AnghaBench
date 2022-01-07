
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {unsigned long sec; scalar_t__ nsec; } ;
struct TYPE_4__ {int sec; int nsec; } ;
struct TYPE_6__ {TYPE_2__ period; TYPE_1__ start; } ;
struct ptp_clock_request {TYPE_3__ perout; } ;
struct phy_device {int dummy; } ;
struct dp83640_private {struct phy_device* phydev; } ;
struct dp83640_clock {int extreg_lock; int ptp_clock; struct dp83640_private* chosen; } ;


 int EINVAL ;
 int PAGE4 ;
 int PAGE5 ;
 int PTP_CTL ;
 int PTP_PF_PEROUT ;
 int PTP_TDR ;
 int PTP_TRIG ;
 int TRIG_CSEL_MASK ;
 int TRIG_CSEL_SHIFT ;
 int TRIG_DIS ;
 int TRIG_EN ;
 int TRIG_GPIO_MASK ;
 int TRIG_GPIO_SHIFT ;
 int TRIG_LOAD ;
 int TRIG_PER ;
 int TRIG_PULSE ;
 int TRIG_SEL_MASK ;
 int TRIG_SEL_SHIFT ;
 int TRIG_WR ;
 int ext_write (int ,struct phy_device*,int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ptp_find_pin (int ,int ,int) ;

__attribute__((used)) static int periodic_output(struct dp83640_clock *clock,
      struct ptp_clock_request *clkreq, bool on,
      int trigger)
{
 struct dp83640_private *dp83640 = clock->chosen;
 struct phy_device *phydev = dp83640->phydev;
 u32 sec, nsec, pwidth;
 u16 gpio, ptp_trig, val;

 if (on) {
  gpio = 1 + ptp_find_pin(clock->ptp_clock, PTP_PF_PEROUT,
     trigger);
  if (gpio < 1)
   return -EINVAL;
 } else {
  gpio = 0;
 }

 ptp_trig = TRIG_WR |
  (trigger & TRIG_CSEL_MASK) << TRIG_CSEL_SHIFT |
  (gpio & TRIG_GPIO_MASK) << TRIG_GPIO_SHIFT |
  TRIG_PER |
  TRIG_PULSE;

 val = (trigger & TRIG_SEL_MASK) << TRIG_SEL_SHIFT;

 if (!on) {
  val |= TRIG_DIS;
  mutex_lock(&clock->extreg_lock);
  ext_write(0, phydev, PAGE5, PTP_TRIG, ptp_trig);
  ext_write(0, phydev, PAGE4, PTP_CTL, val);
  mutex_unlock(&clock->extreg_lock);
  return 0;
 }

 sec = clkreq->perout.start.sec;
 nsec = clkreq->perout.start.nsec;
 pwidth = clkreq->perout.period.sec * 1000000000UL;
 pwidth += clkreq->perout.period.nsec;
 pwidth /= 2;

 mutex_lock(&clock->extreg_lock);

 ext_write(0, phydev, PAGE5, PTP_TRIG, ptp_trig);


 val |= TRIG_LOAD;
 ext_write(0, phydev, PAGE4, PTP_CTL, val);
 ext_write(0, phydev, PAGE4, PTP_TDR, nsec & 0xffff);
 ext_write(0, phydev, PAGE4, PTP_TDR, nsec >> 16);
 ext_write(0, phydev, PAGE4, PTP_TDR, sec & 0xffff);
 ext_write(0, phydev, PAGE4, PTP_TDR, sec >> 16);
 ext_write(0, phydev, PAGE4, PTP_TDR, pwidth & 0xffff);
 ext_write(0, phydev, PAGE4, PTP_TDR, pwidth >> 16);

 if (trigger < 2) {
  ext_write(0, phydev, PAGE4, PTP_TDR, pwidth & 0xffff);
  ext_write(0, phydev, PAGE4, PTP_TDR, pwidth >> 16);
 }


 val &= ~TRIG_LOAD;
 val |= TRIG_EN;
 ext_write(0, phydev, PAGE4, PTP_CTL, val);

 mutex_unlock(&clock->extreg_lock);
 return 0;
}
