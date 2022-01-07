
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int adapter; } ;
struct au0828_dev {TYPE_1__ i2c_client; } ;


 int ENODEV ;

 int i2c_probe_func_quick_read (int ,unsigned short const) ;

__attribute__((used)) static int au0828_probe_i2c_ir(struct au0828_dev *dev)
{
 int i = 0;
 static const unsigned short addr_list[] = {
   0x47, 128
 };

 while (addr_list[i] != 128) {
  if (i2c_probe_func_quick_read(dev->i2c_client.adapter,
           addr_list[i]) == 1)
   return addr_list[i];
  i++;
 }

 return -ENODEV;
}
