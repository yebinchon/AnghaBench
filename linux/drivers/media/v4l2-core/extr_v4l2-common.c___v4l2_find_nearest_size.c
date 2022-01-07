
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ const s32 ;


 scalar_t__ U32_MAX ;
 scalar_t__ abs (scalar_t__ const) ;

const void *
__v4l2_find_nearest_size(const void *array, size_t array_size,
    size_t entry_size, size_t width_offset,
    size_t height_offset, s32 width, s32 height)
{
 u32 error, min_error = U32_MAX;
 const void *best = ((void*)0);
 unsigned int i;

 if (!array)
  return ((void*)0);

 for (i = 0; i < array_size; i++, array += entry_size) {
  const u32 *entry_width = array + width_offset;
  const u32 *entry_height = array + height_offset;

  error = abs(*entry_width - width) + abs(*entry_height - height);
  if (error > min_error)
   continue;

  min_error = error;
  best = array;
  if (!error)
   break;
 }

 return best;
}
