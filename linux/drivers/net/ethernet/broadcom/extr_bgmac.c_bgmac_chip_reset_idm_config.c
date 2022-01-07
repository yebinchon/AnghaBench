
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bgmac {int feature_flags; int has_robosw; } ;


 int BCMA_IOCTL ;
 int BCMA_IOST ;
 int BGMAC_BCMA_IOCTL_SW_CLKEN ;
 int BGMAC_BCMA_IOCTL_SW_RESET ;
 int BGMAC_BCMA_IOST_ATTACHED ;
 int BGMAC_FEAT_IOST_ATTACHED ;
 int BGMAC_FEAT_NO_RESET ;
 int bgmac_clk_enable (struct bgmac*,int) ;
 int bgmac_idm_read (struct bgmac*,int ) ;
 int bgmac_idm_write (struct bgmac*,int ,int) ;

__attribute__((used)) static void bgmac_chip_reset_idm_config(struct bgmac *bgmac)
{
 u32 iost;

 iost = bgmac_idm_read(bgmac, BCMA_IOST);
 if (bgmac->feature_flags & BGMAC_FEAT_IOST_ATTACHED)
  iost &= ~BGMAC_BCMA_IOST_ATTACHED;


 if (!(bgmac->feature_flags & BGMAC_FEAT_NO_RESET)) {
  u32 flags = 0;

  if (iost & BGMAC_BCMA_IOST_ATTACHED) {
   flags = BGMAC_BCMA_IOCTL_SW_CLKEN;
   if (!bgmac->has_robosw)
    flags |= BGMAC_BCMA_IOCTL_SW_RESET;
  }
  bgmac_clk_enable(bgmac, flags);
 }

 if (iost & BGMAC_BCMA_IOST_ATTACHED && !bgmac->has_robosw)
  bgmac_idm_write(bgmac, BCMA_IOCTL,
    bgmac_idm_read(bgmac, BCMA_IOCTL) &
    ~BGMAC_BCMA_IOCTL_SW_RESET);
}
