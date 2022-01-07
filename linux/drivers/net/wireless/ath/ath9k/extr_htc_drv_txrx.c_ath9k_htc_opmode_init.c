
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;
struct ath9k_htc_priv {struct ath_hw* ah; } ;


 int ath9k_htc_calcrxfilter (struct ath9k_htc_priv*) ;
 int ath9k_hw_setmcastfilter (struct ath_hw*,int ,int ) ;
 int ath9k_hw_setrxfilter (struct ath_hw*,int ) ;

__attribute__((used)) static void ath9k_htc_opmode_init(struct ath9k_htc_priv *priv)
{
 struct ath_hw *ah = priv->ah;
 u32 rfilt, mfilt[2];


 rfilt = ath9k_htc_calcrxfilter(priv);
 ath9k_hw_setrxfilter(ah, rfilt);


 mfilt[0] = mfilt[1] = ~0;
 ath9k_hw_setmcastfilter(ah, mfilt[0], mfilt[1]);
}
