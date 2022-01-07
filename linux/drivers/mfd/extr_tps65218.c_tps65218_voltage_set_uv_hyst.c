
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tps65218 {TYPE_1__* dev; } ;
struct TYPE_2__ {int of_node; } ;


 int EINVAL ;
 int TPS65218_CONFIG2_UVLOHYS ;
 int TPS65218_PROTECT_L1 ;
 int TPS65218_REG_CONFIG2 ;
 int dev_err (TYPE_1__*,char*) ;
 scalar_t__ of_property_read_u32 (int ,char*,int*) ;
 int tps65218_update_bits (struct tps65218*,int ,int ,int ,int ) ;

__attribute__((used)) static int tps65218_voltage_set_uv_hyst(struct tps65218 *tps)
{
 u32 hyst;

 if (of_property_read_u32(tps->dev->of_node,
     "ti,under-voltage-hyst-microvolt", &hyst))
  return 0;

 if (hyst != 400000 && hyst != 200000) {
  dev_err(tps->dev,
   "Invalid ti,under-voltage-hyst-microvolt value\n");
  return -EINVAL;
 }

 tps65218_update_bits(tps, TPS65218_REG_CONFIG2,
        TPS65218_CONFIG2_UVLOHYS,
        hyst == 400000 ? TPS65218_CONFIG2_UVLOHYS : 0,
        TPS65218_PROTECT_L1);
 return 0;
}
