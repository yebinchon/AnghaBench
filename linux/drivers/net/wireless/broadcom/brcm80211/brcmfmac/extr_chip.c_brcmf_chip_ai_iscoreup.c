
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct brcmf_core_priv {scalar_t__ wrapbase; struct brcmf_chip_priv* chip; } ;
struct brcmf_chip_priv {int ctx; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read32 ) (int ,scalar_t__) ;} ;


 scalar_t__ BCMA_IOCTL ;
 int BCMA_IOCTL_CLK ;
 int BCMA_IOCTL_FGC ;
 scalar_t__ BCMA_RESET_CTL ;
 int BCMA_RESET_CTL_RESET ;
 int stub1 (int ,scalar_t__) ;
 int stub2 (int ,scalar_t__) ;

__attribute__((used)) static bool brcmf_chip_ai_iscoreup(struct brcmf_core_priv *core)
{
 struct brcmf_chip_priv *ci;
 u32 regdata;
 bool ret;

 ci = core->chip;
 regdata = ci->ops->read32(ci->ctx, core->wrapbase + BCMA_IOCTL);
 ret = (regdata & (BCMA_IOCTL_FGC | BCMA_IOCTL_CLK)) == BCMA_IOCTL_CLK;

 regdata = ci->ops->read32(ci->ctx, core->wrapbase + BCMA_RESET_CTL);
 ret = ret && ((regdata & BCMA_RESET_CTL_RESET) == 0);

 return ret;
}
