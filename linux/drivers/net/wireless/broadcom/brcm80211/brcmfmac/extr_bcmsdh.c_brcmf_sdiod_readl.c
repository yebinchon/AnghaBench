
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmf_sdio_dev {int func1; } ;


 int SBSDIO_SB_ACCESS_2_4B_FLAG ;
 int SBSDIO_SB_OFT_ADDR_MASK ;
 int brcmf_sdiod_set_backplane_window (struct brcmf_sdio_dev*,int ) ;
 int sdio_readl (int ,int ,int*) ;

u32 brcmf_sdiod_readl(struct brcmf_sdio_dev *sdiodev, u32 addr, int *ret)
{
 u32 data = 0;
 int retval;

 retval = brcmf_sdiod_set_backplane_window(sdiodev, addr);
 if (retval)
  goto out;

 addr &= SBSDIO_SB_OFT_ADDR_MASK;
 addr |= SBSDIO_SB_ACCESS_2_4B_FLAG;

 data = sdio_readl(sdiodev->func1, addr, &retval);

out:
 if (ret)
  *ret = retval;

 return data;
}
