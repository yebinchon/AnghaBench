
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct brcmf_core_priv {scalar_t__ wrapbase; struct brcmf_chip_priv* chip; } ;
struct brcmf_chip_priv {int ctx; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read32 ) (int ,scalar_t__) ;int (* write32 ) (int ,scalar_t__,int) ;} ;


 scalar_t__ BCMA_IOCTL ;
 int BCMA_IOCTL_CLK ;
 int BCMA_IOCTL_FGC ;
 scalar_t__ BCMA_RESET_CTL ;
 int BCMA_RESET_CTL_RESET ;
 int SPINWAIT (int,int) ;
 int stub1 (int ,scalar_t__) ;
 int stub2 (int ,scalar_t__,int) ;
 int stub3 (int ,scalar_t__) ;
 int stub4 (int ,scalar_t__,int) ;
 int stub5 (int ,scalar_t__) ;
 int stub6 (int ,scalar_t__,int) ;
 int stub7 (int ,scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void brcmf_chip_ai_coredisable(struct brcmf_core_priv *core,
          u32 prereset, u32 reset)
{
 struct brcmf_chip_priv *ci;
 u32 regdata;

 ci = core->chip;


 regdata = ci->ops->read32(ci->ctx, core->wrapbase + BCMA_RESET_CTL);
 if ((regdata & BCMA_RESET_CTL_RESET) != 0)
  goto in_reset_configure;


 ci->ops->write32(ci->ctx, core->wrapbase + BCMA_IOCTL,
    prereset | BCMA_IOCTL_FGC | BCMA_IOCTL_CLK);
 ci->ops->read32(ci->ctx, core->wrapbase + BCMA_IOCTL);


 ci->ops->write32(ci->ctx, core->wrapbase + BCMA_RESET_CTL,
    BCMA_RESET_CTL_RESET);
 usleep_range(10, 20);


 SPINWAIT(ci->ops->read32(ci->ctx, core->wrapbase + BCMA_RESET_CTL) !=
   BCMA_RESET_CTL_RESET, 300);

in_reset_configure:

 ci->ops->write32(ci->ctx, core->wrapbase + BCMA_IOCTL,
    reset | BCMA_IOCTL_FGC | BCMA_IOCTL_CLK);
 ci->ops->read32(ci->ctx, core->wrapbase + BCMA_IOCTL);
}
