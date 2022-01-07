
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmu_chan {scalar_t__ bw; scalar_t__ sb; scalar_t__ chnum; int chspec; } ;


 scalar_t__ BRCMU_CHAN_BW_20 ;
 scalar_t__ BRCMU_CHAN_SB_L ;
 scalar_t__ BRCMU_CHAN_SB_NONE ;
 int BRCMU_CHSPEC_CH_MASK ;
 int BRCMU_CHSPEC_CH_SHIFT ;
 int BRCMU_CHSPEC_D11AC_BND_2G ;
 int BRCMU_CHSPEC_D11AC_BND_5G ;
 int BRCMU_CHSPEC_D11AC_BND_MASK ;
 int BRCMU_CHSPEC_D11AC_BW_MASK ;
 int BRCMU_CHSPEC_D11AC_SB_MASK ;
 int BRCMU_CHSPEC_D11AC_SB_SHIFT ;
 scalar_t__ CH_MAX_2G_CHANNEL ;
 int brcmu_maskset16 (int *,int ,int ,scalar_t__) ;
 scalar_t__ d11ac_bw (scalar_t__) ;

__attribute__((used)) static void brcmu_d11ac_encchspec(struct brcmu_chan *ch)
{
 if (ch->bw == BRCMU_CHAN_BW_20 || ch->sb == BRCMU_CHAN_SB_NONE)
  ch->sb = BRCMU_CHAN_SB_L;

 brcmu_maskset16(&ch->chspec, BRCMU_CHSPEC_CH_MASK,
   BRCMU_CHSPEC_CH_SHIFT, ch->chnum);
 brcmu_maskset16(&ch->chspec, BRCMU_CHSPEC_D11AC_SB_MASK,
   BRCMU_CHSPEC_D11AC_SB_SHIFT, ch->sb);
 brcmu_maskset16(&ch->chspec, BRCMU_CHSPEC_D11AC_BW_MASK,
   0, d11ac_bw(ch->bw));

 ch->chspec &= ~BRCMU_CHSPEC_D11AC_BND_MASK;
 if (ch->chnum <= CH_MAX_2G_CHANNEL)
  ch->chspec |= BRCMU_CHSPEC_D11AC_BND_2G;
 else
  ch->chspec |= BRCMU_CHSPEC_D11AC_BND_5G;
}
