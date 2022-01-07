
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;



__attribute__((used)) static u16 efx_farch_filter_hash(u32 key)
{
 u16 tmp;


 tmp = 0x1fff ^ key >> 16;
 tmp = tmp ^ tmp >> 3 ^ tmp >> 6;
 tmp = tmp ^ tmp >> 9;

 tmp = tmp ^ tmp << 13 ^ key;
 tmp = tmp ^ tmp >> 3 ^ tmp >> 6;
 return tmp ^ tmp >> 9;
}
