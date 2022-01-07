
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static void wss_insert(u8 *wss, u32 val, unsigned size)
{
 while (size--)
  *wss++ = (val & (1 << size)) ? 0xc0 : 0x10;
}
