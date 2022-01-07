
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 size_t ENTRY_WIDTH ;

__attribute__((used)) static u32 vcap_data_get(u32 *data, u32 offset, u32 len)
{
 u32 i, v, m, value = 0;

 for (i = 0; i < len; i++, offset++) {
  v = data[offset / ENTRY_WIDTH];
  m = (1 << (offset % ENTRY_WIDTH));
  if (v & m)
   value |= (1 << i);
 }
 return value;
}
