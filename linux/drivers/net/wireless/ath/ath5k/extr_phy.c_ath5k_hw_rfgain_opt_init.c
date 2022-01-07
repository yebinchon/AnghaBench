
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int g_low; int g_high; void* g_state; int g_step_idx; } ;
struct ath5k_hw {int ah_radio; TYPE_1__ ah_gain; } ;
struct TYPE_6__ {int go_default; } ;
struct TYPE_5__ {int go_default; } ;




 void* AR5K_RFGAIN_ACTIVE ;
 int EINVAL ;
 TYPE_3__ rfgain_opt_5111 ;
 TYPE_2__ rfgain_opt_5112 ;

int ath5k_hw_rfgain_opt_init(struct ath5k_hw *ah)
{

 switch (ah->ah_radio) {
 case 129:
  ah->ah_gain.g_step_idx = rfgain_opt_5111.go_default;
  ah->ah_gain.g_low = 20;
  ah->ah_gain.g_high = 35;
  ah->ah_gain.g_state = AR5K_RFGAIN_ACTIVE;
  break;
 case 128:
  ah->ah_gain.g_step_idx = rfgain_opt_5112.go_default;
  ah->ah_gain.g_low = 20;
  ah->ah_gain.g_high = 85;
  ah->ah_gain.g_state = AR5K_RFGAIN_ACTIVE;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
