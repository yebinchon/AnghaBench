
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct brcmf_core {int dummy; } ;
struct brcmf_chip_priv {int pub; int ctx; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* activate ) (int ,int *,int ) ;} ;


 int ARMCR4_BCMA_IOCTL_CPUHALT ;
 int BCMA_CORE_ARM_CR4 ;
 struct brcmf_core* brcmf_chip_get_core (int *,int ) ;
 int brcmf_chip_resetcore (struct brcmf_core*,int ,int ,int ) ;
 int stub1 (int ,int *,int ) ;

__attribute__((used)) static bool brcmf_chip_cr4_set_active(struct brcmf_chip_priv *chip, u32 rstvec)
{
 struct brcmf_core *core;

 chip->ops->activate(chip->ctx, &chip->pub, rstvec);


 core = brcmf_chip_get_core(&chip->pub, BCMA_CORE_ARM_CR4);
 brcmf_chip_resetcore(core, ARMCR4_BCMA_IOCTL_CPUHALT, 0, 0);

 return 1;
}
