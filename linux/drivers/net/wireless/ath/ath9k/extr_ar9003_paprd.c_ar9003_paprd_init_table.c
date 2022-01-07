
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int ar9003_paprd_get_gain_table (struct ath_hw*) ;
 int ar9003_paprd_setup_single_table (struct ath_hw*) ;

int ar9003_paprd_init_table(struct ath_hw *ah)
{
 int ret;

 ret = ar9003_paprd_setup_single_table(ah);
 if (ret < 0)
     return ret;

 ar9003_paprd_get_gain_table(ah);
 return 0;
}
