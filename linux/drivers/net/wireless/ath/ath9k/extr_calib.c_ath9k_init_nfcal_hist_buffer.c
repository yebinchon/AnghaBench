
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {TYPE_1__* caldata; } ;
struct ath9k_nfcal_hist {int privNF; int * nfCalBuffer; int invalidNFcount; scalar_t__ currIndex; } ;
struct ath9k_channel {int channelFlags; int channel; } ;
struct TYPE_2__ {struct ath9k_nfcal_hist* nfCalHist; int channelFlags; int channel; } ;


 int AR5416_MAX_CHAINS ;
 int AR_PHY_CCA_FILTERWINDOW_LENGTH ;
 int ATH9K_NF_CAL_HIST_MAX ;
 int NUM_NF_READINGS ;
 int ath9k_hw_get_default_nf (struct ath_hw*,struct ath9k_channel*,int) ;

void ath9k_init_nfcal_hist_buffer(struct ath_hw *ah,
      struct ath9k_channel *chan)
{
 struct ath9k_nfcal_hist *h;
 int i, j, k = 0;

 ah->caldata->channel = chan->channel;
 ah->caldata->channelFlags = chan->channelFlags;
 h = ah->caldata->nfCalHist;
 for (i = 0; i < NUM_NF_READINGS; i++) {
  h[i].currIndex = 0;
  h[i].privNF = ath9k_hw_get_default_nf(ah, chan, k);
  h[i].invalidNFcount = AR_PHY_CCA_FILTERWINDOW_LENGTH;
  for (j = 0; j < ATH9K_NF_CAL_HIST_MAX; j++)
   h[i].nfCalBuffer[j] = h[i].privNF;
  if (++k >= AR5416_MAX_CHAINS)
   k = 0;
 }
}
