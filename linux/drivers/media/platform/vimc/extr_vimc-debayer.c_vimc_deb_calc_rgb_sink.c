
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {unsigned int height; unsigned int width; } ;
struct vimc_deb_device {TYPE_3__ sd; int dev; int sink_bpp; TYPE_2__ sink_fmt; TYPE_1__* sink_pix_map; } ;
typedef enum vimc_deb_rgb_colors { ____Placeholder_vimc_deb_rgb_colors } vimc_deb_rgb_colors ;
struct TYPE_4__ {int** order; } ;


 unsigned int VIMC_FRAME_INDEX (unsigned int,unsigned int,unsigned int,int ) ;
 int deb_mean_win_size ;
 int dev_dbg (int ,char*,int ,unsigned int const,unsigned int const,...) ;
 unsigned int vimc_deb_get_val (int const*,int ) ;

__attribute__((used)) static void vimc_deb_calc_rgb_sink(struct vimc_deb_device *vdeb,
       const u8 *frame,
       const unsigned int lin,
       const unsigned int col,
       unsigned int rgb[3])
{
 unsigned int i, seek, wlin, wcol;
 unsigned int n_rgb[3] = {0, 0, 0};

 for (i = 0; i < 3; i++)
  rgb[i] = 0;






 seek = deb_mean_win_size / 2;



 dev_dbg(vdeb->dev,
  "deb: %s: --- Calc pixel %dx%d, window mean %d, seek %d ---\n",
  vdeb->sd.name, lin, col, vdeb->sink_fmt.height, seek);







 for (wlin = seek > lin ? 0 : lin - seek;
      wlin < lin + seek + 1 && wlin < vdeb->sink_fmt.height;
      wlin++) {







  for (wcol = seek > col ? 0 : col - seek;
       wcol < col + seek + 1 && wcol < vdeb->sink_fmt.width;
       wcol++) {
   enum vimc_deb_rgb_colors color;
   unsigned int index;


   color = vdeb->sink_pix_map->order[wlin % 2][wcol % 2];

   index = VIMC_FRAME_INDEX(wlin, wcol,
       vdeb->sink_fmt.width,
       vdeb->sink_bpp);

   dev_dbg(vdeb->dev,
    "deb: %s: RGB CALC: frame index %d, win pos %dx%d, color %d\n",
    vdeb->sd.name, index, wlin, wcol, color);


   rgb[color] = rgb[color] +
    vimc_deb_get_val(&frame[index], vdeb->sink_bpp);


   n_rgb[color]++;

   dev_dbg(vdeb->dev, "deb: %s: RGB CALC: val %d, n %d\n",
    vdeb->sd.name, rgb[color], n_rgb[color]);
  }
 }


 for (i = 0; i < 3; i++) {
  dev_dbg(vdeb->dev,
   "deb: %s: PRE CALC: %dx%d Color %d, val %d, n %d\n",
   vdeb->sd.name, lin, col, i, rgb[i], n_rgb[i]);

  if (n_rgb[i])
   rgb[i] = rgb[i] / n_rgb[i];

  dev_dbg(vdeb->dev,
   "deb: %s: FINAL CALC: %dx%d Color %d, val %d\n",
   vdeb->sd.name, lin, col, i, rgb[i]);
 }
}
