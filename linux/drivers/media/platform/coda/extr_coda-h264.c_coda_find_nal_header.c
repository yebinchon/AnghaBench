
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static const u8 *coda_find_nal_header(const u8 *buf, const u8 *end)
{
 u32 val = 0xffffffff;

 do {
  val = val << 8 | *buf++;
  if (buf >= end)
   return ((void*)0);
 } while (val != 0x00000001);

 return buf;
}
