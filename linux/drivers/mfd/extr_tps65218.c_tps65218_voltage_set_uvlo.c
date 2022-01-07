
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tps65218 {TYPE_1__* dev; } ;
struct TYPE_2__ {int of_node; } ;


 int EINVAL ;
 int TPS65218_CONFIG1_UVLO_2750000 ;
 int TPS65218_CONFIG1_UVLO_2950000 ;
 int TPS65218_CONFIG1_UVLO_3250000 ;
 int TPS65218_CONFIG1_UVLO_3350000 ;
 int TPS65218_CONFIG1_UVLO_MASK ;
 int TPS65218_PROTECT_L1 ;
 int TPS65218_REG_CONFIG1 ;
 int dev_err (TYPE_1__*,char*) ;
 scalar_t__ of_property_read_u32 (int ,char*,int*) ;
 int tps65218_update_bits (struct tps65218*,int ,int ,int,int ) ;

__attribute__((used)) static int tps65218_voltage_set_uvlo(struct tps65218 *tps)
{
 u32 uvlo;
 int uvloval;

 if (of_property_read_u32(tps->dev->of_node,
     "ti,under-voltage-limit-microvolt", &uvlo))
  return 0;

 switch (uvlo) {
 case 2750000:
  uvloval = TPS65218_CONFIG1_UVLO_2750000;
  break;
 case 2950000:
  uvloval = TPS65218_CONFIG1_UVLO_2950000;
  break;
 case 3250000:
  uvloval = TPS65218_CONFIG1_UVLO_3250000;
  break;
 case 3350000:
  uvloval = TPS65218_CONFIG1_UVLO_3350000;
  break;
 default:
  dev_err(tps->dev,
   "Invalid ti,under-voltage-limit-microvolt value\n");
  return -EINVAL;
 }

 tps65218_update_bits(tps, TPS65218_REG_CONFIG1,
        TPS65218_CONFIG1_UVLO_MASK, uvloval,
        TPS65218_PROTECT_L1);
 return 0;
}
