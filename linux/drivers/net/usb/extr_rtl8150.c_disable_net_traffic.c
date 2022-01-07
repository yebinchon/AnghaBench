
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int rtl8150_t ;


 int CR ;
 int get_registers (int *,int ,int,int*) ;
 int set_registers (int *,int ,int,int*) ;

__attribute__((used)) static void disable_net_traffic(rtl8150_t * dev)
{
 u8 cr;

 get_registers(dev, CR, 1, &cr);
 cr &= 0xf3;
 set_registers(dev, CR, 1, &cr);
}
