
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ header; int ape_voltage_status; } ;
struct TYPE_4__ {int lock; TYPE_1__ ack; int work; } ;


 int BIT (int ) ;
 int EIO ;
 scalar_t__ MB1H_RELEASE_APE_OPP_100_VOLT ;
 scalar_t__ MB1H_REQUEST_APE_OPP_100_VOLT ;
 int MBOX_BIT (int) ;
 int PRCM_MBOX_CPU_SET ;
 int PRCM_MBOX_CPU_VAL ;
 scalar_t__ PRCM_MBOX_HEADER_REQ_MB1 ;
 int cpu_relax () ;
 TYPE_2__ mb1_transfer ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (int ) ;
 scalar_t__ tcdm_base ;
 int wait_for_completion (int *) ;
 int writeb (scalar_t__,scalar_t__) ;
 int writel (int,int ) ;

int db8500_prcmu_request_ape_opp_100_voltage(bool enable)
{
 int r = 0;
 u8 header;
 static unsigned int requests;

 mutex_lock(&mb1_transfer.lock);

 if (enable) {
  if (0 != requests++)
   goto unlock_and_return;
  header = MB1H_REQUEST_APE_OPP_100_VOLT;
 } else {
  if (requests == 0) {
   r = -EIO;
   goto unlock_and_return;
  } else if (1 != requests--) {
   goto unlock_and_return;
  }
  header = MB1H_RELEASE_APE_OPP_100_VOLT;
 }

 while (readl(PRCM_MBOX_CPU_VAL) & MBOX_BIT(1))
  cpu_relax();

 writeb(header, (tcdm_base + PRCM_MBOX_HEADER_REQ_MB1));

 writel(MBOX_BIT(1), PRCM_MBOX_CPU_SET);
 wait_for_completion(&mb1_transfer.work);

 if ((mb1_transfer.ack.header != header) ||
  ((mb1_transfer.ack.ape_voltage_status & BIT(0)) != 0))
  r = -EIO;

unlock_and_return:
 mutex_unlock(&mb1_transfer.lock);

 return r;
}
