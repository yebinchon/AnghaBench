
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tps65218 {TYPE_1__* dev; } ;
struct TYPE_2__ {int of_node; } ;


 int EINVAL ;
 int TPS65218_CONFIG1_STRICT ;
 int TPS65218_PROTECT_L1 ;
 int TPS65218_REG_CONFIG1 ;
 int dev_err (TYPE_1__*,char*) ;
 scalar_t__ of_property_read_u32 (int ,char*,int*) ;
 int tps65218_update_bits (struct tps65218*,int ,int ,int ,int ) ;

__attribute__((used)) static int tps65218_voltage_set_strict(struct tps65218 *tps)
{
 u32 strict;

 if (of_property_read_u32(tps->dev->of_node,
     "ti,strict-supply-voltage-supervision",
     &strict))
  return 0;

 if (strict != 0 && strict != 1) {
  dev_err(tps->dev,
   "Invalid ti,strict-supply-voltage-supervision value\n");
  return -EINVAL;
 }

 tps65218_update_bits(tps, TPS65218_REG_CONFIG1,
        TPS65218_CONFIG1_STRICT,
        strict ? TPS65218_CONFIG1_STRICT : 0,
        TPS65218_PROTECT_L1);
 return 0;
}
