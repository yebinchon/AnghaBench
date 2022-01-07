
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int outb (int ,int ) ;

__attribute__((used)) static void byteblaster_write(int port, int data)
{
 outb((u8)data, (u16)(port + 0x378));
}
