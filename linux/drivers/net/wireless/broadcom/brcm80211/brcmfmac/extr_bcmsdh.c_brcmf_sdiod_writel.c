
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmf_sdio_dev {int func1; } ;


 int SBSDIO_SB_ACCESS_2_4B_FLAG ;
 int SBSDIO_SB_OFT_ADDR_MASK ;
 int brcmf_sdiod_set_backplane_window (struct brcmf_sdio_dev*,int ) ;
 int sdio_writel (int ,int ,int ,int*) ;

void brcmf_sdiod_writel(struct brcmf_sdio_dev *sdiodev, u32 addr,
   u32 data, int *ret)
{
 int retval;

 retval = brcmf_sdiod_set_backplane_window(sdiodev, addr);
 if (retval)
  goto out;

 addr &= SBSDIO_SB_OFT_ADDR_MASK;
 addr |= SBSDIO_SB_ACCESS_2_4B_FLAG;

 sdio_writel(sdiodev->func1, data, addr, &retval);

out:
 if (ret)
  *ret = retval;
}
