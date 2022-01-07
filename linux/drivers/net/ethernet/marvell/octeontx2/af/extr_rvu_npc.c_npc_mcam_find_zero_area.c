
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ find_next_bit (unsigned long*,scalar_t__,scalar_t__) ;
 scalar_t__ find_next_zero_bit (unsigned long*,scalar_t__,scalar_t__) ;

__attribute__((used)) static u16 npc_mcam_find_zero_area(unsigned long *map, u16 size, u16 start,
       u16 nr, u16 *max_area)
{
 u16 max_area_start = 0;
 u16 index, next, end;

 *max_area = 0;

again:
 index = find_next_zero_bit(map, size, start);
 if (index >= size)
  return max_area_start;

 end = ((index + nr) >= size) ? size : index + nr;
 next = find_next_bit(map, end, index);
 if (*max_area < (next - index)) {
  *max_area = next - index;
  max_area_start = index;
 }

 if (next < end) {
  start = next + 1;
  goto again;
 }

 return max_area_start;
}
