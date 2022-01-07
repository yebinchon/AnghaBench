
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_nf_limits {int nominal; int min; int max; } ;
struct ath_hw {struct ath_nf_limits nf_5g; struct ath_nf_limits nf_2g; int curchan; } ;
struct ath_common {int dummy; } ;
typedef int s16 ;


 int CALIBRATE ;
 scalar_t__ IS_CHAN_2GHZ (int ) ;
 int NUM_NF_READINGS ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,...) ;

__attribute__((used)) static void ath9k_hw_nf_sanitize(struct ath_hw *ah, s16 *nf)
{
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath_nf_limits *limit;
 int i;

 if (IS_CHAN_2GHZ(ah->curchan))
  limit = &ah->nf_2g;
 else
  limit = &ah->nf_5g;

 for (i = 0; i < NUM_NF_READINGS; i++) {
  if (!nf[i])
   continue;

  ath_dbg(common, CALIBRATE,
   "NF calibrated [%s] [chain %d] is %d\n",
   (i >= 3 ? "ext" : "ctl"), i % 3, nf[i]);

  if (nf[i] > limit->max) {
   ath_dbg(common, CALIBRATE,
    "NF[%d] (%d) > MAX (%d), correcting to MAX\n",
    i, nf[i], limit->max);
   nf[i] = limit->max;
  } else if (nf[i] < limit->min) {
   ath_dbg(common, CALIBRATE,
    "NF[%d] (%d) < MIN (%d), correcting to NOM\n",
    i, nf[i], limit->min);
   nf[i] = limit->nominal;
  }
 }
}
