
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;


 int AR_PHY_ERR ;
 int AR_PHY_ERR_CCK_TIMING ;
 int AR_PHY_ERR_OFDM_TIMING ;
 int AR_PHY_ERR_RADAR ;
 int AR_RX_FILTER ;
 int ATH9K_RX_FILTER_PHYERR ;
 int ATH9K_RX_FILTER_PHYRADAR ;
 int REG_READ (struct ath_hw*,int ) ;

u32 ath9k_hw_getrxfilter(struct ath_hw *ah)
{
 u32 bits = REG_READ(ah, AR_RX_FILTER);
 u32 phybits = REG_READ(ah, AR_PHY_ERR);

 if (phybits & AR_PHY_ERR_RADAR)
  bits |= ATH9K_RX_FILTER_PHYRADAR;
 if (phybits & (AR_PHY_ERR_OFDM_TIMING | AR_PHY_ERR_CCK_TIMING))
  bits |= ATH9K_RX_FILTER_PHYERR;

 return bits;
}
