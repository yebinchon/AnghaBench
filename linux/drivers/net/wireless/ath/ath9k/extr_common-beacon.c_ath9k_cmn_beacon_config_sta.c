
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ath_hw {int dummy; } ;
struct ath_common {int op_flags; } ;
struct ath_beacon_config {int intval; int beacon_interval; int dtim_period; int bmiss_timeout; void* nexttbtt; } ;
struct ath9k_beacon_state {int bs_intval; int bs_dtimperiod; int bs_bmissthreshold; int bs_sleepduration; int bs_tsfoor_threshold; void* bs_nextdtim; void* bs_nexttbtt; } ;


 int ATH9K_TSFOOR_THRESHOLD ;
 int ATH_OP_PRIM_STA_VIF ;
 int BEACON ;
 int DIV_ROUND_UP (int ,int) ;
 int EPERM ;
 int IEEE80211_MS_TO_TU (int) ;
 void* TU_TO_USEC (int) ;
 void* ath9k_get_next_tbtt (struct ath_hw*,int ,int) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_gettsf64 (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,...) ;
 int memset (struct ath9k_beacon_state*,int ,int) ;
 int roundup (int ,int) ;
 int test_bit (int ,int *) ;

int ath9k_cmn_beacon_config_sta(struct ath_hw *ah,
     struct ath_beacon_config *conf,
     struct ath9k_beacon_state *bs)
{
 struct ath_common *common = ath9k_hw_common(ah);
 int dtim_intval;
 u64 tsf;


 if (!test_bit(ATH_OP_PRIM_STA_VIF, &common->op_flags)) {
  ath_dbg(common, BEACON,
   "STA is not yet associated..skipping beacon config\n");
  return -EPERM;
 }

 memset(bs, 0, sizeof(*bs));
 conf->intval = conf->beacon_interval;





 dtim_intval = conf->intval * conf->dtim_period;





 tsf = ath9k_hw_gettsf64(ah);
 conf->nexttbtt = ath9k_get_next_tbtt(ah, tsf, conf->intval);

 bs->bs_intval = TU_TO_USEC(conf->intval);
 bs->bs_dtimperiod = conf->dtim_period * bs->bs_intval;
 bs->bs_nexttbtt = conf->nexttbtt;
 bs->bs_nextdtim = conf->nexttbtt;
 if (conf->dtim_period > 1)
  bs->bs_nextdtim = ath9k_get_next_tbtt(ah, tsf, dtim_intval);







 bs->bs_bmissthreshold = DIV_ROUND_UP(conf->bmiss_timeout, conf->intval);
 if (bs->bs_bmissthreshold > 15)
  bs->bs_bmissthreshold = 15;
 else if (bs->bs_bmissthreshold <= 0)
  bs->bs_bmissthreshold = 1;
 bs->bs_sleepduration = TU_TO_USEC(roundup(IEEE80211_MS_TO_TU(100),
        conf->intval));
 if (bs->bs_sleepduration > bs->bs_dtimperiod)
  bs->bs_sleepduration = bs->bs_dtimperiod;


 bs->bs_tsfoor_threshold = ATH9K_TSFOOR_THRESHOLD;

 ath_dbg(common, BEACON, "bmiss: %u sleep: %u\n",
  bs->bs_bmissthreshold, bs->bs_sleepduration);
 return 0;
}
