
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ io ;
 scalar_t__ iommap ;
 int ioshift ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void soutp(int offset, u8 value)
{
 if (iommap)

  offset <<= ioshift;

 outb(value, io + offset);
}
