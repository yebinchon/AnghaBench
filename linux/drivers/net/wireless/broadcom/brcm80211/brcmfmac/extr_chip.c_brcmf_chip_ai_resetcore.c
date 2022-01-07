
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
 scalar_t__ BCMA_RESET_CTL ;
 int BCMA_RESET_CTL_RESET ;
 int brcmf_chip_ai_coredisable (struct brcmf_core_priv*,int,int) ;
 int stub1 (int ,scalar_t__) ;
 int stub2 (int ,scalar_t__,int) ;
 int stub3 (int ,scalar_t__,int) ;
 int stub4 (int ,scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void brcmf_chip_ai_resetcore(struct brcmf_core_priv *core, u32 prereset,
        u32 reset, u32 postreset)
{
 struct brcmf_chip_priv *ci;
 int count;

 ci = core->chip;


 brcmf_chip_ai_coredisable(core, prereset, reset);

 count = 0;
 while (ci->ops->read32(ci->ctx, core->wrapbase + BCMA_RESET_CTL) &
        BCMA_RESET_CTL_RESET) {
  ci->ops->write32(ci->ctx, core->wrapbase + BCMA_RESET_CTL, 0);
  count++;
  if (count > 50)
   break;
  usleep_range(40, 60);
 }

 ci->ops->write32(ci->ctx, core->wrapbase + BCMA_IOCTL,
    postreset | BCMA_IOCTL_CLK);
 ci->ops->read32(ci->ctx, core->wrapbase + BCMA_IOCTL);
}
