
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
struct TYPE_4__ {int (* read32 ) (int ,int) ;} ;


 int CORE_SB (int ,int ) ;
 int SSB_IMSTATE_REJECT ;
 int SSB_TMSLOW_CLOCK ;
 int SSB_TMSLOW_REJECT ;
 int SSB_TMSLOW_RESET ;
 int sbtmstatelow ;
 int stub1 (int ,int) ;

__attribute__((used)) static bool brcmf_chip_sb_iscoreup(struct brcmf_core_priv *core)
{
 struct brcmf_chip_priv *ci;
 u32 regdata;
 u32 address;

 ci = core->chip;
 address = CORE_SB(core->pub.base, sbtmstatelow);
 regdata = ci->ops->read32(ci->ctx, address);
 regdata &= (SSB_TMSLOW_RESET | SSB_TMSLOW_REJECT |
      SSB_IMSTATE_REJECT | SSB_TMSLOW_CLOCK);
 return SSB_TMSLOW_CLOCK == regdata;
}
