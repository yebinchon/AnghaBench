
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct octeon_droq {int pkts_credit_reg; struct octeon_device* oct_dev; } ;
struct octeon_device {int dummy; } ;


 scalar_t__ CN23XX_SLI_DEF_BP ;
 int octeon_droq_refill (struct octeon_device*,struct octeon_droq*) ;
 scalar_t__ readl (int ) ;
 int wmb () ;
 int writel (int,int ) ;

int octeon_retry_droq_refill(struct octeon_droq *droq)
{
 struct octeon_device *oct = droq->oct_dev;
 int desc_refilled, reschedule = 1;
 u32 pkts_credit;

 pkts_credit = readl(droq->pkts_credit_reg);
 desc_refilled = octeon_droq_refill(oct, droq);
 if (desc_refilled) {




  wmb();
  writel(desc_refilled, droq->pkts_credit_reg);

  if (pkts_credit + desc_refilled >= CN23XX_SLI_DEF_BP)
   reschedule = 0;
 }

 return reschedule;
}
