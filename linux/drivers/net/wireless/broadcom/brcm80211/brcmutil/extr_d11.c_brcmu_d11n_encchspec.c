
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmu_chan {scalar_t__ bw; scalar_t__ chnum; int chspec; int sb; } ;


 scalar_t__ BRCMU_CHAN_BW_20 ;
 int BRCMU_CHAN_SB_NONE ;
 int BRCMU_CHSPEC_CH_MASK ;
 int BRCMU_CHSPEC_CH_SHIFT ;
 int BRCMU_CHSPEC_D11N_BND_2G ;
 int BRCMU_CHSPEC_D11N_BND_5G ;
 int BRCMU_CHSPEC_D11N_BW_MASK ;
 int BRCMU_CHSPEC_D11N_SB_MASK ;
 scalar_t__ CH_MAX_2G_CHANNEL ;
 int brcmu_maskset16 (int *,int ,int ,scalar_t__) ;
 scalar_t__ d11n_bw (scalar_t__) ;
 scalar_t__ d11n_sb (int ) ;

__attribute__((used)) static void brcmu_d11n_encchspec(struct brcmu_chan *ch)
{
 if (ch->bw == BRCMU_CHAN_BW_20)
  ch->sb = BRCMU_CHAN_SB_NONE;

 ch->chspec = 0;
 brcmu_maskset16(&ch->chspec, BRCMU_CHSPEC_CH_MASK,
   BRCMU_CHSPEC_CH_SHIFT, ch->chnum);
 brcmu_maskset16(&ch->chspec, BRCMU_CHSPEC_D11N_SB_MASK,
   0, d11n_sb(ch->sb));
 brcmu_maskset16(&ch->chspec, BRCMU_CHSPEC_D11N_BW_MASK,
   0, d11n_bw(ch->bw));

 if (ch->chnum <= CH_MAX_2G_CHANNEL)
  ch->chspec |= BRCMU_CHSPEC_D11N_BND_2G;
 else
  ch->chspec |= BRCMU_CHSPEC_D11N_BND_5G;
}
