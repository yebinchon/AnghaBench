
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ar9170 {TYPE_1__* hw; } ;
struct TYPE_5__ {int _2ghz; int _5ghz; int reg; } ;
struct TYPE_4__ {int wiphy; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int carl9170_regwrite (int ,int ) ;
 int carl9170_regwrite_begin (struct ar9170*) ;
 int carl9170_regwrite_finish () ;
 int carl9170_regwrite_result () ;
 TYPE_2__* carl9170_rf_initval ;
 int wiphy_err (int ,char*) ;

__attribute__((used)) static int carl9170_init_rf_banks_0_7(struct ar9170 *ar, bool band5ghz)
{
 int err, i;

 carl9170_regwrite_begin(ar);

 for (i = 0; i < ARRAY_SIZE(carl9170_rf_initval); i++)
  carl9170_regwrite(carl9170_rf_initval[i].reg,
      band5ghz ? carl9170_rf_initval[i]._5ghz
        : carl9170_rf_initval[i]._2ghz);

 carl9170_regwrite_finish();
 err = carl9170_regwrite_result();
 if (err)
  wiphy_err(ar->hw->wiphy, "rf init failed\n");

 return err;
}
