
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int dbb_irqs; } ;
struct TYPE_6__ {TYPE_1__ req; int ac_wake_work; } ;
struct TYPE_5__ {int sysclk_work; } ;




 int MBOX_BIT (int ) ;
 unsigned int NUM_PRCMU_WAKEUPS ;
 scalar_t__ PRCM_ACK_MB0_READ_POINTER ;
 scalar_t__ PRCM_ACK_MB0_WAKEUP_0_8500 ;
 scalar_t__ PRCM_ACK_MB0_WAKEUP_1_8500 ;
 int PRCM_ARM_IT1_CLR ;
 scalar_t__ PRCM_MBOX_HEADER_ACK_MB0 ;
 int WAKEUP_BIT_AC_SLEEP_ACK ;
 int WAKEUP_BIT_AC_WAKE_ACK ;
 int WAKEUP_BIT_SYSCLK_OK ;
 int complete (int *) ;
 int db8500_irq_domain ;
 int generic_handle_irq (int ) ;
 int irq_find_mapping (int ,unsigned int) ;
 TYPE_3__ mb0_transfer ;
 TYPE_2__ mb3_transfer ;
 int* prcmu_irq_bit ;
 int print_unknown_header_warning (int ,int) ;
 int readb (scalar_t__) ;
 int readl (scalar_t__) ;
 scalar_t__ tcdm_base ;
 int writel (int ,int ) ;

__attribute__((used)) static bool read_mailbox_0(void)
{
 bool r;
 u32 ev;
 unsigned int n;
 u8 header;

 header = readb(tcdm_base + PRCM_MBOX_HEADER_ACK_MB0);
 switch (header) {
 case 129:
 case 128:
  if (readb(tcdm_base + PRCM_ACK_MB0_READ_POINTER) & 1)
   ev = readl(tcdm_base + PRCM_ACK_MB0_WAKEUP_1_8500);
  else
   ev = readl(tcdm_base + PRCM_ACK_MB0_WAKEUP_0_8500);

  if (ev & (WAKEUP_BIT_AC_WAKE_ACK | WAKEUP_BIT_AC_SLEEP_ACK))
   complete(&mb0_transfer.ac_wake_work);
  if (ev & WAKEUP_BIT_SYSCLK_OK)
   complete(&mb3_transfer.sysclk_work);

  ev &= mb0_transfer.req.dbb_irqs;

  for (n = 0; n < NUM_PRCMU_WAKEUPS; n++) {
   if (ev & prcmu_irq_bit[n])
    generic_handle_irq(irq_find_mapping(db8500_irq_domain, n));
  }
  r = 1;
  break;
 default:
  print_unknown_header_warning(0, header);
  r = 0;
  break;
 }
 writel(MBOX_BIT(0), PRCM_ARM_IT1_CLR);
 return r;
}
