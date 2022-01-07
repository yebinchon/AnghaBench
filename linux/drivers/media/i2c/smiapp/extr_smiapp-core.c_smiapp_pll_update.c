
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smiapp_pll {int pixel_rate_csi; int pixel_rate_pixel_array; int bits_per_pixel; int scale_m; int link_freq; int binning_vertical; int binning_horizontal; } ;
struct smiapp_sensor {int pixel_rate_csi; int pixel_rate_parray; TYPE_2__* csi_format; int scale_m; TYPE_1__* link_freq; int binning_vertical; int binning_horizontal; struct smiapp_pll pll; } ;
struct TYPE_4__ {int compressed; } ;
struct TYPE_3__ {size_t val; int * qmenu_int; } ;


 int __v4l2_ctrl_s_ctrl_int64 (int ,int ) ;
 int smiapp_pll_try (struct smiapp_sensor*,struct smiapp_pll*) ;

__attribute__((used)) static int smiapp_pll_update(struct smiapp_sensor *sensor)
{
 struct smiapp_pll *pll = &sensor->pll;
 int rval;

 pll->binning_horizontal = sensor->binning_horizontal;
 pll->binning_vertical = sensor->binning_vertical;
 pll->link_freq =
  sensor->link_freq->qmenu_int[sensor->link_freq->val];
 pll->scale_m = sensor->scale_m;
 pll->bits_per_pixel = sensor->csi_format->compressed;

 rval = smiapp_pll_try(sensor, pll);
 if (rval < 0)
  return rval;

 __v4l2_ctrl_s_ctrl_int64(sensor->pixel_rate_parray,
     pll->pixel_rate_pixel_array);
 __v4l2_ctrl_s_ctrl_int64(sensor->pixel_rate_csi, pll->pixel_rate_csi);

 return 0;
}
