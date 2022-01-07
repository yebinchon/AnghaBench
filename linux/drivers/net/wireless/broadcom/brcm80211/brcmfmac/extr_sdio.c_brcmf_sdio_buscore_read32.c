
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct brcmf_sdio_dev {TYPE_1__* func1; } ;
struct TYPE_2__ {scalar_t__ device; } ;


 int BRCM_CC_4339_CHIP_ID ;
 int CID_ID_MASK ;
 int CID_REV_MASK ;
 int CID_REV_SHIFT ;
 int CORE_CC_REG (int ,int ) ;
 scalar_t__ SDIO_DEVICE_ID_BROADCOM_4335_4339 ;
 scalar_t__ SDIO_DEVICE_ID_BROADCOM_4339 ;
 int SI_ENUM_BASE ;
 int brcmf_sdiod_readl (struct brcmf_sdio_dev*,int,int *) ;
 int chipid ;

__attribute__((used)) static u32 brcmf_sdio_buscore_read32(void *ctx, u32 addr)
{
 struct brcmf_sdio_dev *sdiodev = ctx;
 u32 val, rev;

 val = brcmf_sdiod_readl(sdiodev, addr, ((void*)0));
 if (addr == CORE_CC_REG(SI_ENUM_BASE, chipid) &&
     (sdiodev->func1->device == SDIO_DEVICE_ID_BROADCOM_4339 ||
      sdiodev->func1->device == SDIO_DEVICE_ID_BROADCOM_4335_4339)) {
  rev = (val & CID_REV_MASK) >> CID_REV_SHIFT;
  if (rev >= 2) {
   val &= ~CID_ID_MASK;
   val |= BRCM_CC_4339_CHIP_ID;
  }
 }

 return val;
}
