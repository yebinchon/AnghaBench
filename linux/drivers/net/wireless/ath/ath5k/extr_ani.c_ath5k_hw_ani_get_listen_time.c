
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_common {int cc_lock; int cc_ani; } ;
struct ath5k_hw {int dummy; } ;
struct ath5k_ani_state {int last_cc; } ;


 struct ath_common* ath5k_hw_common (struct ath5k_hw*) ;
 int ath_hw_cycle_counters_update (struct ath_common*) ;
 int ath_hw_get_listen_time (struct ath_common*) ;
 int memcpy (int *,int *,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
ath5k_hw_ani_get_listen_time(struct ath5k_hw *ah, struct ath5k_ani_state *as)
{
 struct ath_common *common = ath5k_hw_common(ah);
 int listen;

 spin_lock_bh(&common->cc_lock);

 ath_hw_cycle_counters_update(common);
 memcpy(&as->last_cc, &common->cc_ani, sizeof(as->last_cc));


 listen = ath_hw_get_listen_time(common);

 spin_unlock_bh(&common->cc_lock);

 return listen;
}
