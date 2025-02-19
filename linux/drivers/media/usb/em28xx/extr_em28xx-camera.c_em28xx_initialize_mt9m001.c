
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx {size_t def_i2c_bus; int * i2c_client; } ;


 int ARRAY_SIZE (unsigned char**) ;
 int i2c_master_send (int *,unsigned char*,int) ;

__attribute__((used)) static int em28xx_initialize_mt9m001(struct em28xx *dev)
{
 int i;
 unsigned char regs[][3] = {
  { 0x0d, 0x00, 0x01, },
  { 0x0d, 0x00, 0x00, },
  { 0x04, 0x05, 0x00, },
  { 0x03, 0x04, 0x00, },
  { 0x20, 0x11, 0x00, },
  { 0x06, 0x00, 0x10, },
  { 0x2b, 0x00, 0x24, },
  { 0x2e, 0x00, 0x24, },
  { 0x35, 0x00, 0x24, },
  { 0x2d, 0x00, 0x20, },
  { 0x2c, 0x00, 0x20, },
  { 0x09, 0x0a, 0xd4, },
  { 0x35, 0x00, 0x57, },
 };

 for (i = 0; i < ARRAY_SIZE(regs); i++)
  i2c_master_send(&dev->i2c_client[dev->def_i2c_bus],
    &regs[i][0], 3);



 return 0;
}
