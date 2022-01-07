
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_core {int dummy; } ;
struct brcmf_chip_priv {int pub; int ctx; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* activate ) (int ,int *,int ) ;} ;


 int BCMA_CORE_ARM_CM3 ;
 int BCMA_CORE_INTERNAL_MEM ;
 struct brcmf_core* brcmf_chip_get_core (int *,int ) ;
 int brcmf_chip_iscoreup (struct brcmf_core*) ;
 int brcmf_chip_resetcore (struct brcmf_core*,int ,int ,int ) ;
 int brcmf_err (char*) ;
 int stub1 (int ,int *,int ) ;

__attribute__((used)) static bool brcmf_chip_cm3_set_active(struct brcmf_chip_priv *chip)
{
 struct brcmf_core *core;

 core = brcmf_chip_get_core(&chip->pub, BCMA_CORE_INTERNAL_MEM);
 if (!brcmf_chip_iscoreup(core)) {
  brcmf_err("SOCRAM core is down after reset?\n");
  return 0;
 }

 chip->ops->activate(chip->ctx, &chip->pub, 0);

 core = brcmf_chip_get_core(&chip->pub, BCMA_CORE_ARM_CM3);
 brcmf_chip_resetcore(core, 0, 0, 0);

 return 1;
}
