
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmf_sdio_dev {int dummy; } ;


 int brcmf_sdiod_writel (struct brcmf_sdio_dev*,int ,int ,int *) ;

__attribute__((used)) static void brcmf_sdio_buscore_write32(void *ctx, u32 addr, u32 val)
{
 struct brcmf_sdio_dev *sdiodev = ctx;

 brcmf_sdiod_writel(sdiodev, addr, val, ((void*)0));
}
