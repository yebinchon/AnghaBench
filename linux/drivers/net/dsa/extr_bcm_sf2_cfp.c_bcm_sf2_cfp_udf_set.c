
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct cfp_udf_layout {TYPE_1__* udfs; } ;
struct bcm_sf2_priv {int dummy; } ;
struct TYPE_2__ {int * slices; scalar_t__ base_offset; } ;


 unsigned int UDFS_PER_SLICE ;
 int core_writel (struct bcm_sf2_priv*,int ,scalar_t__) ;

__attribute__((used)) static void bcm_sf2_cfp_udf_set(struct bcm_sf2_priv *priv,
    const struct cfp_udf_layout *layout,
    unsigned int slice_num)
{
 u32 offset = layout->udfs[slice_num].base_offset;
 unsigned int i;

 for (i = 0; i < UDFS_PER_SLICE; i++)
  core_writel(priv, layout->udfs[slice_num].slices[i],
       offset + i * 4);
}
