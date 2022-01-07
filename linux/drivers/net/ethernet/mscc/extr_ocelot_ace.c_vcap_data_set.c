
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 size_t ENTRY_WIDTH ;

__attribute__((used)) static void vcap_data_set(u32 *data, u32 offset, u32 len, u32 value)
{
 u32 i, v, m;

 for (i = 0; i < len; i++, offset++) {
  v = data[offset / ENTRY_WIDTH];
  m = (1 << (offset % ENTRY_WIDTH));
  if (value & (1 << i))
   v |= m;
  else
   v &= ~m;
  data[offset / ENTRY_WIDTH] = v;
 }
}
