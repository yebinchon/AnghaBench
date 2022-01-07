
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int idm_base; } ;
struct bgmac {TYPE_1__ plat; } ;


 int BCMA_IOCTL ;
 int BCMA_RESET_CTL ;
 int BGMAC_ARCACHE ;
 int BGMAC_ARUSER ;
 int BGMAC_AWCACHE ;
 int BGMAC_AWUSER ;
 int BGMAC_CLK_EN ;
 int bgmac_idm_read (struct bgmac*,int ) ;
 int bgmac_idm_write (struct bgmac*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void platform_bgmac_clk_enable(struct bgmac *bgmac, u32 flags)
{
 u32 val;

 if (!bgmac->plat.idm_base)
  return;





 val = bgmac_idm_read(bgmac, BCMA_RESET_CTL);
 if (val) {
  bgmac_idm_write(bgmac, BCMA_RESET_CTL, 0);
  bgmac_idm_read(bgmac, BCMA_RESET_CTL);
  udelay(1);
 }

 val = bgmac_idm_read(bgmac, BCMA_IOCTL);

 val |= flags & ~(BGMAC_AWCACHE | BGMAC_ARCACHE | BGMAC_AWUSER |
    BGMAC_ARUSER);
 val |= BGMAC_CLK_EN;
 bgmac_idm_write(bgmac, BCMA_IOCTL, val);
 bgmac_idm_read(bgmac, BCMA_IOCTL);
 udelay(1);
}
