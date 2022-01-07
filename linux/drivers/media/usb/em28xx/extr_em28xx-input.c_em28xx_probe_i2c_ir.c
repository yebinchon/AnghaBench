
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx {size_t def_i2c_bus; int * i2c_adap; } ;


 int ENODEV ;

 int i2c_probe_func_quick_read (int *,unsigned short const) ;

__attribute__((used)) static int em28xx_probe_i2c_ir(struct em28xx *dev)
{
 int i = 0;





 static const unsigned short addr_list[] = {
   0x1f, 0x30, 0x47, 128
 };

 while (addr_list[i] != 128) {
  if (i2c_probe_func_quick_read(&dev->i2c_adap[dev->def_i2c_bus],
           addr_list[i]) == 1)
   return addr_list[i];
  i++;
 }

 return -ENODEV;
}
