
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ath_softc {TYPE_1__* cur_chan; struct ath_hw* sc_ah; } ;
struct TYPE_6__ {scalar_t__ ani_poll_interval; } ;
struct ath_hw {TYPE_3__ config; } ;
struct TYPE_5__ {unsigned long longcal_timer; unsigned long shortcal_timer; unsigned long checkani_timer; int timer; } ;
struct ath_common {TYPE_2__ ani; int op_flags; scalar_t__ disable_ani; } ;
struct TYPE_4__ {scalar_t__ offchannel; } ;


 int ANI ;
 int ATH_OP_ANI_RUN ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;
 scalar_t__ jiffies ;
 unsigned long jiffies_to_msecs (scalar_t__) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int test_bit (int ,int *) ;

void ath_start_ani(struct ath_softc *sc)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 unsigned long timestamp = jiffies_to_msecs(jiffies);

 if (common->disable_ani ||
     !test_bit(ATH_OP_ANI_RUN, &common->op_flags) ||
     sc->cur_chan->offchannel)
  return;

 common->ani.longcal_timer = timestamp;
 common->ani.shortcal_timer = timestamp;
 common->ani.checkani_timer = timestamp;

 ath_dbg(common, ANI, "Starting ANI\n");
 mod_timer(&common->ani.timer,
    jiffies + msecs_to_jiffies((u32)ah->config.ani_poll_interval));
}
