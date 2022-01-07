
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct brcmf_sdio_dev {TYPE_1__* bus; } ;
struct brcmf_core {scalar_t__ base; } ;
struct brcmf_chip {int dummy; } ;
typedef int rstvec ;
struct TYPE_2__ {struct brcmf_core* sdio_core; } ;


 scalar_t__ SD_REG (int ) ;
 int brcmf_sdiod_ramrw (struct brcmf_sdio_dev*,int,int ,void*,int) ;
 int brcmf_sdiod_writel (struct brcmf_sdio_dev*,scalar_t__,int,int *) ;
 int intstatus ;

__attribute__((used)) static void brcmf_sdio_buscore_activate(void *ctx, struct brcmf_chip *chip,
     u32 rstvec)
{
 struct brcmf_sdio_dev *sdiodev = ctx;
 struct brcmf_core *core = sdiodev->bus->sdio_core;
 u32 reg_addr;


 reg_addr = core->base + SD_REG(intstatus);
 brcmf_sdiod_writel(sdiodev, reg_addr, 0xFFFFFFFF, ((void*)0));

 if (rstvec)

  brcmf_sdiod_ramrw(sdiodev, 1, 0, (void *)&rstvec,
      sizeof(rstvec));
}
