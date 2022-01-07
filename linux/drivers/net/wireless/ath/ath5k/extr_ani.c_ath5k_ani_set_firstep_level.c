
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int firstep_level; } ;
struct ath5k_hw {TYPE_1__ ani_state; } ;


 int AR5K_PHY_SIG ;
 int AR5K_PHY_SIG_FIRSTEP ;
 int AR5K_REG_WRITE_BITS (struct ath5k_hw*,int ,int ,int const) ;
 int ARRAY_SIZE (int const*) ;
 int ATH5K_DBG_UNLIMIT (struct ath5k_hw*,int ,char*,int) ;
 int ATH5K_DEBUG_ANI ;
 int ATH5K_ERR (struct ath5k_hw*,char*,int) ;

void
ath5k_ani_set_firstep_level(struct ath5k_hw *ah, int level)
{
 static const int val[] = { 0, 4, 8 };

 if (level < 0 || level >= ARRAY_SIZE(val)) {
  ATH5K_ERR(ah, "firstep level %d out of range", level);
  return;
 }

 AR5K_REG_WRITE_BITS(ah, AR5K_PHY_SIG,
    AR5K_PHY_SIG_FIRSTEP, val[level]);

 ah->ani_state.firstep_level = level;
 ATH5K_DBG_UNLIMIT(ah, ATH5K_DEBUG_ANI, "new level %d", level);
}
