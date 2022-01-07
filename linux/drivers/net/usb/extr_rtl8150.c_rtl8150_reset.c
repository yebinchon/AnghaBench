
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int rtl8150_t ;


 int CR ;
 int HZ ;
 int get_registers (int *,int ,int,int*) ;
 int set_registers (int *,int ,int,int*) ;

__attribute__((used)) static int rtl8150_reset(rtl8150_t * dev)
{
 u8 data = 0x10;
 int i = HZ;

 set_registers(dev, CR, 1, &data);
 do {
  get_registers(dev, CR, 1, &data);
 } while ((data & 0x10) && --i);

 return (i > 0) ? 1 : 0;
}
