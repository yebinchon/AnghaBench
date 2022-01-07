
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXITSLREQ_BIT ;
 int SLEEP_MODE_BIT ;
 int TPS6586X_SUPPLYENE ;
 scalar_t__ tps6586x_clr_bits (int ,int ,int ) ;
 int tps6586x_dev ;
 int tps6586x_set_bits (int ,int ,int ) ;

__attribute__((used)) static void tps6586x_power_off(void)
{
 if (tps6586x_clr_bits(tps6586x_dev, TPS6586X_SUPPLYENE, EXITSLREQ_BIT))
  return;

 tps6586x_set_bits(tps6586x_dev, TPS6586X_SUPPLYENE, SLEEP_MODE_BIT);
}
