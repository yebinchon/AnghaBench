
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {unsigned int const width; } ;
struct vimc_sca_device {unsigned int const bpp; scalar_t__ src_line_size; int * src_frame; TYPE_2__ sd; int dev; TYPE_1__ sink_fmt; } ;


 unsigned int VIMC_FRAME_INDEX (unsigned int const,unsigned int const,unsigned int const,unsigned int const) ;
 int dev_dbg (int ,char*,int ,unsigned int const,...) ;
 unsigned int const sca_mult ;
 int vimc_sca_fill_pix (int *,int const*,unsigned int) ;

__attribute__((used)) static void vimc_sca_scale_pix(const struct vimc_sca_device *const vsca,
          const unsigned int lin, const unsigned int col,
          const u8 *const sink_frame)
{
 unsigned int i, j, index;
 const u8 *pixel;


 index = VIMC_FRAME_INDEX(lin, col,
     vsca->sink_fmt.width,
     vsca->bpp);
 pixel = &sink_frame[index];

 dev_dbg(vsca->dev,
  "sca: %s: --- scale_pix sink pos %dx%d, index %d ---\n",
  vsca->sd.name, lin, col, index);




 index = VIMC_FRAME_INDEX(lin * sca_mult, col * sca_mult,
     vsca->sink_fmt.width * sca_mult, vsca->bpp);

 dev_dbg(vsca->dev, "sca: %s: scale_pix src pos %dx%d, index %d\n",
  vsca->sd.name, lin * sca_mult, col * sca_mult, index);


 for (i = 0; i < sca_mult; i++) {



  for (j = 0; j < sca_mult * vsca->bpp; j += vsca->bpp) {
   dev_dbg(vsca->dev,
    "sca: %s: sca: scale_pix src pos %d\n",
    vsca->sd.name, index + j);


   vimc_sca_fill_pix(&vsca->src_frame[index + j],
       pixel, vsca->bpp);
  }


  index += vsca->src_line_size;
 }
}
