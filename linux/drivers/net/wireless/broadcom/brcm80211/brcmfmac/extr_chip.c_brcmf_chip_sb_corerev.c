
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct brcmf_core {int rev; int base; } ;
struct brcmf_chip_priv {int ctx; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read32 ) (int ,int ) ;} ;


 int CORE_SB (int ,int ) ;
 int SBCOREREV (int ) ;
 int sbidhigh ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void brcmf_chip_sb_corerev(struct brcmf_chip_priv *ci,
      struct brcmf_core *core)
{
 u32 regdata;

 regdata = ci->ops->read32(ci->ctx, CORE_SB(core->base, sbidhigh));
 core->rev = SBCOREREV(regdata);
}
