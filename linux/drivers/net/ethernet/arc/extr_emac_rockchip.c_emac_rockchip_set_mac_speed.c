
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rockchip_priv_data {TYPE_1__* soc_data; int grf; } ;
struct TYPE_2__ {int grf_speed_offset; int grf_offset; } ;


 int pr_err (char*,unsigned int,...) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void emac_rockchip_set_mac_speed(void *priv, unsigned int speed)
{
 struct rockchip_priv_data *emac = priv;
 u32 speed_offset = emac->soc_data->grf_speed_offset;
 u32 data;
 int err = 0;

 switch (speed) {
 case 10:
  data = (1 << (speed_offset + 16)) | (0 << speed_offset);
  break;
 case 100:
  data = (1 << (speed_offset + 16)) | (1 << speed_offset);
  break;
 default:
  pr_err("speed %u not supported\n", speed);
  return;
 }

 err = regmap_write(emac->grf, emac->soc_data->grf_offset, data);
 if (err)
  pr_err("unable to apply speed %u to grf (%d)\n", speed, err);
}
