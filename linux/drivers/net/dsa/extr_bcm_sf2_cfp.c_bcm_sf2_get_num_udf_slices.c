
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 unsigned int UDFS_PER_SLICE ;

__attribute__((used)) static inline unsigned int bcm_sf2_get_num_udf_slices(const u8 *layout)
{
 unsigned int i, count = 0;

 for (i = 0; i < UDFS_PER_SLICE; i++) {
  if (layout[i] != 0)
   count++;
 }

 return count;
}
