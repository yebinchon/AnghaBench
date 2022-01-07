
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int f1regdata; } ;
struct brcmf_sdio {unsigned long hostintmask; int intstatus; TYPE_1__ sdcnt; int sdiodev; int fcstate; struct brcmf_core* sdio_core; } ;
struct brcmf_core {scalar_t__ base; } ;


 unsigned long I_HMB_FC_STATE ;
 scalar_t__ SD_REG (int ) ;
 int atomic_or (unsigned long,int *) ;
 int atomic_set (int *,int) ;
 unsigned long brcmf_sdiod_readl (int ,scalar_t__,int*) ;
 int brcmf_sdiod_writel (int ,scalar_t__,unsigned long,int*) ;
 int intstatus ;

__attribute__((used)) static int brcmf_sdio_intr_rstatus(struct brcmf_sdio *bus)
{
 struct brcmf_core *core = bus->sdio_core;
 u32 addr;
 unsigned long val;
 int ret;

 addr = core->base + SD_REG(intstatus);

 val = brcmf_sdiod_readl(bus->sdiodev, addr, &ret);
 bus->sdcnt.f1regdata++;
 if (ret != 0)
  return ret;

 val &= bus->hostintmask;
 atomic_set(&bus->fcstate, !!(val & I_HMB_FC_STATE));


 if (val) {
  brcmf_sdiod_writel(bus->sdiodev, addr, val, &ret);
  bus->sdcnt.f1regdata++;
  atomic_or(val, &bus->intstatus);
 }

 return ret;
}
