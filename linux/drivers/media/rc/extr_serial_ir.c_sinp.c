
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int inb (scalar_t__) ;
 scalar_t__ io ;
 scalar_t__ iommap ;
 int ioshift ;

__attribute__((used)) static u8 sinp(int offset)
{
 if (iommap)

  offset <<= ioshift;

 return inb(io + offset);
}
