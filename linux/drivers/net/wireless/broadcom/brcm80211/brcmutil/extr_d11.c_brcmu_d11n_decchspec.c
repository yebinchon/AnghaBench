
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct brcmu_chan {int chspec; int band; scalar_t__ control_ch_num; int sb; int bw; scalar_t__ chnum; } ;


 int BRCMU_CHAN_BAND_2G ;
 int BRCMU_CHAN_BAND_5G ;
 int BRCMU_CHAN_BW_20 ;
 int BRCMU_CHAN_BW_40 ;
 int BRCMU_CHAN_SB_L ;
 int BRCMU_CHAN_SB_NONE ;
 int BRCMU_CHAN_SB_U ;
 int BRCMU_CHSPEC_CH_MASK ;


 int BRCMU_CHSPEC_D11N_BND_MASK ;


 int BRCMU_CHSPEC_D11N_BW_MASK ;
 int BRCMU_CHSPEC_D11N_SB_L ;
 int BRCMU_CHSPEC_D11N_SB_MASK ;
 int CH_10MHZ_APART ;
 int WARN_ONCE (int,char*,int) ;

__attribute__((used)) static void brcmu_d11n_decchspec(struct brcmu_chan *ch)
{
 u16 val;

 ch->chnum = (u8)(ch->chspec & BRCMU_CHSPEC_CH_MASK);
 ch->control_ch_num = ch->chnum;

 switch (ch->chspec & BRCMU_CHSPEC_D11N_BW_MASK) {
 case 129:
  ch->bw = BRCMU_CHAN_BW_20;
  ch->sb = BRCMU_CHAN_SB_NONE;
  break;
 case 128:
  ch->bw = BRCMU_CHAN_BW_40;
  val = ch->chspec & BRCMU_CHSPEC_D11N_SB_MASK;
  if (val == BRCMU_CHSPEC_D11N_SB_L) {
   ch->sb = BRCMU_CHAN_SB_L;
   ch->control_ch_num -= CH_10MHZ_APART;
  } else {
   ch->sb = BRCMU_CHAN_SB_U;
   ch->control_ch_num += CH_10MHZ_APART;
  }
  break;
 default:
  WARN_ONCE(1, "Invalid chanspec 0x%04x\n", ch->chspec);
  break;
 }

 switch (ch->chspec & BRCMU_CHSPEC_D11N_BND_MASK) {
 case 130:
  ch->band = BRCMU_CHAN_BAND_5G;
  break;
 case 131:
  ch->band = BRCMU_CHAN_BAND_2G;
  break;
 default:
  WARN_ONCE(1, "Invalid chanspec 0x%04x\n", ch->chspec);
  break;
 }
}
