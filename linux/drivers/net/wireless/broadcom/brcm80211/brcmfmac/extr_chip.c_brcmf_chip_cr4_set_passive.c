
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_core {int dummy; } ;
struct brcmf_chip_priv {int pub; } ;


 int BCMA_CORE_80211 ;
 int BCMA_CORE_ARM_CR4 ;
 int D11_BCMA_IOCTL_PHYCLOCKEN ;
 int D11_BCMA_IOCTL_PHYRESET ;
 int brcmf_chip_disable_arm (struct brcmf_chip_priv*,int ) ;
 struct brcmf_core* brcmf_chip_get_core (int *,int ) ;
 int brcmf_chip_resetcore (struct brcmf_core*,int,int,int) ;

__attribute__((used)) static inline void
brcmf_chip_cr4_set_passive(struct brcmf_chip_priv *chip)
{
 struct brcmf_core *core;

 brcmf_chip_disable_arm(chip, BCMA_CORE_ARM_CR4);

 core = brcmf_chip_get_core(&chip->pub, BCMA_CORE_80211);
 brcmf_chip_resetcore(core, D11_BCMA_IOCTL_PHYRESET |
       D11_BCMA_IOCTL_PHYCLOCKEN,
        D11_BCMA_IOCTL_PHYCLOCKEN,
        D11_BCMA_IOCTL_PHYCLOCKEN);
}
