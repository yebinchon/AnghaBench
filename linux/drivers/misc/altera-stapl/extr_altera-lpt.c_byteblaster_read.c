
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int inb (int ) ;

__attribute__((used)) static int byteblaster_read(int port)
{
 int data = 0;
 data = inb((u16)(port + 0x378));
 return data & 0xff;
}
