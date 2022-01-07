
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bgmac {int feature_flags; } ;


 int BGMAC_DC_MROR ;
 int BGMAC_DEV_CTL ;
 int BGMAC_FEAT_NO_CLR_MIB ;
 int BGMAC_NUM_MIB_RX_REGS ;
 int BGMAC_NUM_MIB_TX_REGS ;
 scalar_t__ BGMAC_RX_GOOD_OCTETS ;
 scalar_t__ BGMAC_TX_GOOD_OCTETS ;
 int bgmac_read (struct bgmac*,scalar_t__) ;
 int bgmac_set (struct bgmac*,int ,int ) ;

__attribute__((used)) static void bgmac_clear_mib(struct bgmac *bgmac)
{
 int i;

 if (bgmac->feature_flags & BGMAC_FEAT_NO_CLR_MIB)
  return;

 bgmac_set(bgmac, BGMAC_DEV_CTL, BGMAC_DC_MROR);
 for (i = 0; i < BGMAC_NUM_MIB_TX_REGS; i++)
  bgmac_read(bgmac, BGMAC_TX_GOOD_OCTETS + (i * 4));
 for (i = 0; i < BGMAC_NUM_MIB_RX_REGS; i++)
  bgmac_read(bgmac, BGMAC_RX_GOOD_OCTETS + (i * 4));
}
