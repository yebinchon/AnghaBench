
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct brcmf_pciedev_info {TYPE_1__* ci; } ;
struct brcmf_core {int dummy; } ;
struct TYPE_3__ {scalar_t__ chip; } ;


 int BCMA_CORE_INTERNAL_MEM ;
 scalar_t__ BRCM_CC_43602_CHIP_ID ;
 int EINVAL ;
 struct brcmf_core* brcmf_chip_get_core (TYPE_1__*,int ) ;
 int brcmf_chip_resetcore (struct brcmf_core*,int ,int ,int ) ;
 int brcmf_chip_set_active (TYPE_1__*,int ) ;

__attribute__((used)) static int brcmf_pcie_exit_download_state(struct brcmf_pciedev_info *devinfo,
       u32 resetintr)
{
 struct brcmf_core *core;

 if (devinfo->ci->chip == BRCM_CC_43602_CHIP_ID) {
  core = brcmf_chip_get_core(devinfo->ci, BCMA_CORE_INTERNAL_MEM);
  brcmf_chip_resetcore(core, 0, 0, 0);
 }

 if (!brcmf_chip_set_active(devinfo->ci, resetintr))
  return -EINVAL;
 return 0;
}
