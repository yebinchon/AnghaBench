
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ enable_paprd; } ;
struct TYPE_3__ {int hw_caps; } ;
struct ath_hw {TYPE_2__ config; TYPE_1__ caps; } ;


 int ATH9K_HW_CAP_PAPRD ;

bool ar9003_is_paprd_enabled(struct ath_hw *ah)
{
 if ((ah->caps.hw_caps & ATH9K_HW_CAP_PAPRD) && ah->config.enable_paprd)
  return 1;

 return 0;
}
