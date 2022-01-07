
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
 int SPINWAIT (int,int) ;
 int SSB_IDLOW_INITIATOR ;
 int SSB_IMSTATE_BUSY ;
 int SSB_IMSTATE_REJECT ;
 int SSB_TMSHIGH_BUSY ;
 int SSB_TMSLOW_CLOCK ;
 int SSB_TMSLOW_FGC ;
 int SSB_TMSLOW_REJECT ;
 int SSB_TMSLOW_RESET ;
 int brcmf_err (char*) ;
 int sbidlow ;
 int sbimstate ;
 int sbtmstatehigh ;
 int sbtmstatelow ;
 int stub1 (int ,int ) ;
 int stub10 (int ,int ,int) ;
 int stub11 (int ,int ) ;
 int stub12 (int ,int ) ;
 int stub13 (int ,int ,int) ;
 int stub14 (int ,int ) ;
 int stub15 (int ,int ) ;
 int stub16 (int ,int ) ;
 int stub17 (int ,int ,int) ;
 int stub18 (int ,int ,int) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int ,int) ;
 int stub5 (int ,int ) ;
 int stub6 (int ,int ) ;
 int stub7 (int ,int ) ;
 int stub8 (int ,int ) ;
 int stub9 (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void brcmf_chip_sb_coredisable(struct brcmf_core_priv *core,
          u32 prereset, u32 reset)
{
 struct brcmf_chip_priv *ci;
 u32 val, base;

 ci = core->chip;
 base = core->pub.base;
 val = ci->ops->read32(ci->ctx, CORE_SB(base, sbtmstatelow));
 if (val & SSB_TMSLOW_RESET)
  return;

 val = ci->ops->read32(ci->ctx, CORE_SB(base, sbtmstatelow));
 if ((val & SSB_TMSLOW_CLOCK) != 0) {




  val = ci->ops->read32(ci->ctx, CORE_SB(base, sbtmstatelow));
  ci->ops->write32(ci->ctx, CORE_SB(base, sbtmstatelow),
      val | SSB_TMSLOW_REJECT);

  val = ci->ops->read32(ci->ctx, CORE_SB(base, sbtmstatelow));
  udelay(1);
  SPINWAIT((ci->ops->read32(ci->ctx, CORE_SB(base, sbtmstatehigh))
     & SSB_TMSHIGH_BUSY), 100000);

  val = ci->ops->read32(ci->ctx, CORE_SB(base, sbtmstatehigh));
  if (val & SSB_TMSHIGH_BUSY)
   brcmf_err("core state still busy\n");

  val = ci->ops->read32(ci->ctx, CORE_SB(base, sbidlow));
  if (val & SSB_IDLOW_INITIATOR) {
   val = ci->ops->read32(ci->ctx,
           CORE_SB(base, sbimstate));
   val |= SSB_IMSTATE_REJECT;
   ci->ops->write32(ci->ctx,
      CORE_SB(base, sbimstate), val);
   val = ci->ops->read32(ci->ctx,
           CORE_SB(base, sbimstate));
   udelay(1);
   SPINWAIT((ci->ops->read32(ci->ctx,
        CORE_SB(base, sbimstate)) &
      SSB_IMSTATE_BUSY), 100000);
  }


  val = SSB_TMSLOW_FGC | SSB_TMSLOW_CLOCK |
        SSB_TMSLOW_REJECT | SSB_TMSLOW_RESET;
  ci->ops->write32(ci->ctx, CORE_SB(base, sbtmstatelow), val);
  val = ci->ops->read32(ci->ctx, CORE_SB(base, sbtmstatelow));
  udelay(10);


  val = ci->ops->read32(ci->ctx, CORE_SB(base, sbidlow));
  if (val & SSB_IDLOW_INITIATOR) {
   val = ci->ops->read32(ci->ctx,
           CORE_SB(base, sbimstate));
   val &= ~SSB_IMSTATE_REJECT;
   ci->ops->write32(ci->ctx,
      CORE_SB(base, sbimstate), val);
  }
 }


 ci->ops->write32(ci->ctx, CORE_SB(base, sbtmstatelow),
    (SSB_TMSLOW_REJECT | SSB_TMSLOW_RESET));
 udelay(1);
}
