
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int base; } ;
struct brcmf_core_priv {TYPE_1__ pub; struct brcmf_chip_priv* chip; } ;
struct brcmf_chip_priv {int ctx; TYPE_2__* ops; } ;
struct TYPE_4__ {int (* read32 ) (int ,int ) ;int (* write32 ) (int ,int ,int) ;} ;


 int CORE_SB (int,int ) ;
 int SSB_IMSTATE_IBE ;
 int SSB_IMSTATE_TO ;
 int SSB_TMSHIGH_SERR ;
 int SSB_TMSLOW_CLOCK ;
 int SSB_TMSLOW_FGC ;
 int SSB_TMSLOW_RESET ;
 int brcmf_chip_sb_coredisable (struct brcmf_core_priv*,int ,int ) ;
 int sbimstate ;
 int sbtmstatehigh ;
 int sbtmstatelow ;
 int stub1 (int ,int ,int) ;
 int stub10 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int ,int) ;
 int stub5 (int ,int ) ;
 int stub6 (int ,int ,int) ;
 int stub7 (int ,int ,int) ;
 int stub8 (int ,int ) ;
 int stub9 (int ,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void brcmf_chip_sb_resetcore(struct brcmf_core_priv *core, u32 prereset,
        u32 reset, u32 postreset)
{
 struct brcmf_chip_priv *ci;
 u32 regdata;
 u32 base;

 ci = core->chip;
 base = core->pub.base;




 brcmf_chip_sb_coredisable(core, 0, 0);






 ci->ops->write32(ci->ctx, CORE_SB(base, sbtmstatelow),
    SSB_TMSLOW_FGC | SSB_TMSLOW_CLOCK |
    SSB_TMSLOW_RESET);
 regdata = ci->ops->read32(ci->ctx, CORE_SB(base, sbtmstatelow));
 udelay(1);


 regdata = ci->ops->read32(ci->ctx, CORE_SB(base, sbtmstatehigh));
 if (regdata & SSB_TMSHIGH_SERR)
  ci->ops->write32(ci->ctx, CORE_SB(base, sbtmstatehigh), 0);

 regdata = ci->ops->read32(ci->ctx, CORE_SB(base, sbimstate));
 if (regdata & (SSB_IMSTATE_IBE | SSB_IMSTATE_TO)) {
  regdata &= ~(SSB_IMSTATE_IBE | SSB_IMSTATE_TO);
  ci->ops->write32(ci->ctx, CORE_SB(base, sbimstate), regdata);
 }


 ci->ops->write32(ci->ctx, CORE_SB(base, sbtmstatelow),
    SSB_TMSLOW_FGC | SSB_TMSLOW_CLOCK);
 regdata = ci->ops->read32(ci->ctx, CORE_SB(base, sbtmstatelow));
 udelay(1);


 ci->ops->write32(ci->ctx, CORE_SB(base, sbtmstatelow),
    SSB_TMSLOW_CLOCK);
 regdata = ci->ops->read32(ci->ctx, CORE_SB(base, sbtmstatelow));
 udelay(1);
}
