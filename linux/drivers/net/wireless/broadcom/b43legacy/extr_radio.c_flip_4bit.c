
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int B43legacy_BUG_ON (int) ;

__attribute__((used)) static u16 flip_4bit(u16 value)
{
 u16 flipped = 0x0000;

 B43legacy_BUG_ON(!((value & ~0x000F) == 0x0000));

 flipped |= (value & 0x0001) << 3;
 flipped |= (value & 0x0002) << 1;
 flipped |= (value & 0x0004) >> 1;
 flipped |= (value & 0x0008) >> 3;

 return flipped;
}
