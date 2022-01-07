
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {unsigned int height; unsigned int width; } ;
struct vimc_sca_device {TYPE_1__ sink_fmt; } ;


 int vimc_sca_scale_pix (struct vimc_sca_device const* const,unsigned int,unsigned int,int const* const) ;

__attribute__((used)) static void vimc_sca_fill_src_frame(const struct vimc_sca_device *const vsca,
        const u8 *const sink_frame)
{
 unsigned int i, j;



 for (i = 0; i < vsca->sink_fmt.height; i++)
  for (j = 0; j < vsca->sink_fmt.width; j++)
   vimc_sca_scale_pix(vsca, i, j, sink_frame);
}
