
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idm_base; } ;
struct bgmac {TYPE_1__ plat; } ;


 int BCMA_IOCTL ;
 int BCMA_RESET_CTL ;
 int BCMA_RESET_CTL_RESET ;
 int BGMAC_CLK_EN ;
 int bgmac_idm_read (struct bgmac*,int ) ;

__attribute__((used)) static bool platform_bgmac_clk_enabled(struct bgmac *bgmac)
{
 if (!bgmac->plat.idm_base)
  return 1;

 if ((bgmac_idm_read(bgmac, BCMA_IOCTL) & BGMAC_CLK_EN) != BGMAC_CLK_EN)
  return 0;
 if (bgmac_idm_read(bgmac, BCMA_RESET_CTL) & BCMA_RESET_CTL_RESET)
  return 0;
 return 1;
}
