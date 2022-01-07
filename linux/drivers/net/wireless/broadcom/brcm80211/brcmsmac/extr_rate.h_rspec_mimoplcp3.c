
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline u8 rspec_mimoplcp3(u32 rspec)
{
 return (rspec & 0xf00000) >> 16;
}
