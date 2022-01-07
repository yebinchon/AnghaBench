
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ header; } ;
struct TYPE_4__ {int lock; TYPE_1__ ack; int work; } ;


 int EINVAL ;
 int EIO ;
 scalar_t__ MB1H_PLL_ON_OFF ;
 int MBOX_BIT (int) ;
 scalar_t__ PLL_SOC0_OFF ;
 scalar_t__ PLL_SOC0_ON ;
 scalar_t__ PLL_SOC1_OFF ;
 scalar_t__ PLL_SOC1_ON ;
 scalar_t__ PRCMU_PLLSOC0 ;
 scalar_t__ PRCMU_PLLSOC1 ;
 int PRCM_MBOX_CPU_SET ;
 int PRCM_MBOX_CPU_VAL ;
 scalar_t__ PRCM_MBOX_HEADER_REQ_MB1 ;
 scalar_t__ PRCM_REQ_MB1_PLL_ON_OFF ;
 int cpu_relax () ;
 TYPE_2__ mb1_transfer ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (int ) ;
 scalar_t__ tcdm_base ;
 int wait_for_completion (int *) ;
 int writeb (scalar_t__,scalar_t__) ;
 int writel (int,int ) ;

__attribute__((used)) static int request_pll(u8 clock, bool enable)
{
 int r = 0;

 if (clock == PRCMU_PLLSOC0)
  clock = (enable ? PLL_SOC0_ON : PLL_SOC0_OFF);
 else if (clock == PRCMU_PLLSOC1)
  clock = (enable ? PLL_SOC1_ON : PLL_SOC1_OFF);
 else
  return -EINVAL;

 mutex_lock(&mb1_transfer.lock);

 while (readl(PRCM_MBOX_CPU_VAL) & MBOX_BIT(1))
  cpu_relax();

 writeb(MB1H_PLL_ON_OFF, (tcdm_base + PRCM_MBOX_HEADER_REQ_MB1));
 writeb(clock, (tcdm_base + PRCM_REQ_MB1_PLL_ON_OFF));

 writel(MBOX_BIT(1), PRCM_MBOX_CPU_SET);
 wait_for_completion(&mb1_transfer.work);

 if (mb1_transfer.ack.header != MB1H_PLL_ON_OFF)
  r = -EIO;

 mutex_unlock(&mb1_transfer.lock);

 return r;
}
