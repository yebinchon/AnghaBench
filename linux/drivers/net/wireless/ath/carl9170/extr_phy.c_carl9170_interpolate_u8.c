
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s32 ;


 int SHIFT ;
 int carl9170_interpolate_s32 (int,int,int,int,int) ;

__attribute__((used)) static u8 carl9170_interpolate_u8(u8 x, u8 x1, u8 y1, u8 x2, u8 y2)
{

 s32 y;

 y = carl9170_interpolate_s32(x << 8, x1 << 8,
  y1 << 8, x2 << 8, y2 << 8);






 return (y >> 8) + ((y & (1 << (8 - 1))) >> (8 - 1));

}
