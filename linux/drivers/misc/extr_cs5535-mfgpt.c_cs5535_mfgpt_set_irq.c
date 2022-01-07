
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cs5535_mfgpt_timer {int nr; } ;


 int CONFIG_CS5535_MFGPT_DEFAULT_IRQ ;
 int EIO ;
 int MFGPT_CMP1 ;
 int MFGPT_EVENT_IRQ ;
 int MSR_PIC_IRQM_LPC ;
 int MSR_PIC_ZSEL_LOW ;
 int WARN_ON (int) ;
 scalar_t__ cs5535_mfgpt_toggle_event (struct cs5535_mfgpt_timer*,int,int ,int) ;
 int rdmsr (int ,int,int) ;
 int wrmsr (int ,int,int) ;

int cs5535_mfgpt_set_irq(struct cs5535_mfgpt_timer *timer, int cmp, int *irq,
  int enable)
{
 uint32_t zsel, lpc, dummy;
 int shift;

 if (!timer) {
  WARN_ON(1);
  return -EIO;
 }
 rdmsr(MSR_PIC_ZSEL_LOW, zsel, dummy);
 shift = ((cmp == MFGPT_CMP1 ? 0 : 4) + timer->nr % 4) * 4;
 if (((zsel >> shift) & 0xF) == 2)
  return -EIO;


 if (!*irq)
  *irq = (zsel >> shift) & 0xF;
 if (!*irq)
  *irq = CONFIG_CS5535_MFGPT_DEFAULT_IRQ;


 if (*irq < 1 || *irq == 2 || *irq > 15)
  return -EIO;
 rdmsr(MSR_PIC_IRQM_LPC, lpc, dummy);
 if (lpc & (1 << *irq))
  return -EIO;


 if (cs5535_mfgpt_toggle_event(timer, cmp, MFGPT_EVENT_IRQ, enable))
  return -EIO;
 if (enable) {
  zsel = (zsel & ~(0xF << shift)) | (*irq << shift);
  wrmsr(MSR_PIC_ZSEL_LOW, zsel, dummy);
 }

 return 0;
}
