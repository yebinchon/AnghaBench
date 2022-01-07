
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct memstick_host {int dummy; } ;
struct jmb38x_ms_host {int ifmode; TYPE_1__* chip; scalar_t__ addr; int id; } ;
typedef enum memstick_param { ____Placeholder_memstick_param } memstick_param ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {TYPE_2__* pdev; } ;


 scalar_t__ CLOCK_CONTROL ;
 unsigned int CLOCK_CONTROL_40MHZ ;
 unsigned int CLOCK_CONTROL_50MHZ ;
 unsigned int CLOCK_CONTROL_BY_MMIO ;
 unsigned int CLOCK_CONTROL_OFF ;
 int EINVAL ;
 scalar_t__ HOST_CONTROL ;
 unsigned int HOST_CONTROL_CLOCK_EN ;
 unsigned int HOST_CONTROL_FAST_CLK ;
 unsigned int HOST_CONTROL_HW_OC_P ;
 int HOST_CONTROL_IF_PAR4 ;
 int HOST_CONTROL_IF_PAR8 ;
 int HOST_CONTROL_IF_SERIAL ;
 int HOST_CONTROL_IF_SHIFT ;
 unsigned int HOST_CONTROL_POWER_EN ;
 unsigned int HOST_CONTROL_REI ;
 unsigned int HOST_CONTROL_REO ;
 unsigned int HOST_CONTROL_TDELAY_EN ;

 int MEMSTICK_PAR4 ;
 int MEMSTICK_PAR8 ;

 int MEMSTICK_POWER_OFF ;
 int MEMSTICK_POWER_ON ;
 int MEMSTICK_SERIAL ;
 scalar_t__ PAD_OUTPUT_ENABLE ;
 unsigned int PAD_OUTPUT_ENABLE_MS ;
 scalar_t__ PAD_PU_PD ;
 unsigned int PAD_PU_PD_OFF ;
 unsigned int PAD_PU_PD_ON_MS_SOCK0 ;
 unsigned int PAD_PU_PD_ON_MS_SOCK1 ;
 int PCI_CTL_CLOCK_DLY_ADDR ;
 int dev_dbg (int *,char*,...) ;
 int jmb38x_ms_reset (struct jmb38x_ms_host*) ;
 struct jmb38x_ms_host* memstick_priv (struct memstick_host*) ;
 int msleep (int) ;
 int pci_write_config_byte (TYPE_2__*,int ,unsigned int) ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int jmb38x_ms_set_param(struct memstick_host *msh,
          enum memstick_param param,
          int value)
{
 struct jmb38x_ms_host *host = memstick_priv(msh);
 unsigned int host_ctl = readl(host->addr + HOST_CONTROL);
 unsigned int clock_ctl = CLOCK_CONTROL_BY_MMIO, clock_delay = 0;
 int rc = 0;

 switch (param) {
 case 128:
  if (value == MEMSTICK_POWER_ON) {
   rc = jmb38x_ms_reset(host);
   if (rc)
    return rc;

   host_ctl = 7;
   host_ctl |= HOST_CONTROL_POWER_EN
     | HOST_CONTROL_CLOCK_EN;
   writel(host_ctl, host->addr + HOST_CONTROL);

   writel(host->id ? PAD_PU_PD_ON_MS_SOCK1
     : PAD_PU_PD_ON_MS_SOCK0,
          host->addr + PAD_PU_PD);

   writel(PAD_OUTPUT_ENABLE_MS,
          host->addr + PAD_OUTPUT_ENABLE);

   msleep(10);
   dev_dbg(&host->chip->pdev->dev, "power on\n");
  } else if (value == MEMSTICK_POWER_OFF) {
   host_ctl &= ~(HOST_CONTROL_POWER_EN
          | HOST_CONTROL_CLOCK_EN);
   writel(host_ctl, host->addr + HOST_CONTROL);
   writel(0, host->addr + PAD_OUTPUT_ENABLE);
   writel(PAD_PU_PD_OFF, host->addr + PAD_PU_PD);
   dev_dbg(&host->chip->pdev->dev, "power off\n");
  } else
   return -EINVAL;
  break;
 case 129:
  dev_dbg(&host->chip->pdev->dev,
   "Set Host Interface Mode to %d\n", value);
  host_ctl &= ~(HOST_CONTROL_FAST_CLK | HOST_CONTROL_REI |
         HOST_CONTROL_REO);
  host_ctl |= HOST_CONTROL_TDELAY_EN | HOST_CONTROL_HW_OC_P;
  host_ctl &= ~(3 << HOST_CONTROL_IF_SHIFT);

  if (value == MEMSTICK_SERIAL) {
   host_ctl |= HOST_CONTROL_IF_SERIAL
        << HOST_CONTROL_IF_SHIFT;
   host_ctl |= HOST_CONTROL_REI;
   clock_ctl |= CLOCK_CONTROL_40MHZ;
   clock_delay = 0;
  } else if (value == MEMSTICK_PAR4) {
   host_ctl |= HOST_CONTROL_FAST_CLK;
   host_ctl |= HOST_CONTROL_IF_PAR4
        << HOST_CONTROL_IF_SHIFT;
   host_ctl |= HOST_CONTROL_REO;
   clock_ctl |= CLOCK_CONTROL_40MHZ;
   clock_delay = 4;
  } else if (value == MEMSTICK_PAR8) {
   host_ctl |= HOST_CONTROL_FAST_CLK;
   host_ctl |= HOST_CONTROL_IF_PAR8
        << HOST_CONTROL_IF_SHIFT;
   clock_ctl |= CLOCK_CONTROL_50MHZ;
   clock_delay = 0;
  } else
   return -EINVAL;

  writel(host_ctl, host->addr + HOST_CONTROL);
  writel(CLOCK_CONTROL_OFF, host->addr + CLOCK_CONTROL);
  writel(clock_ctl, host->addr + CLOCK_CONTROL);
  pci_write_config_byte(host->chip->pdev,
          PCI_CTL_CLOCK_DLY_ADDR + 1,
          clock_delay);
  host->ifmode = value;
  break;
 };
 return 0;
}
