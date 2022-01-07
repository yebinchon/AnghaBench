
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {unsigned short addr; } ;


 int ARRAY_SIZE (unsigned short*) ;
 int CHIP_PM8606 ;
 int CHIP_PM8607 ;

__attribute__((used)) static int verify_addr(struct i2c_client *i2c)
{
 unsigned short addr_8607[] = {0x30, 0x34};
 unsigned short addr_8606[] = {0x10, 0x11};
 int size, i;

 if (i2c == ((void*)0))
  return 0;
 size = ARRAY_SIZE(addr_8606);
 for (i = 0; i < size; i++) {
  if (i2c->addr == *(addr_8606 + i))
   return CHIP_PM8606;
 }
 size = ARRAY_SIZE(addr_8607);
 for (i = 0; i < size; i++) {
  if (i2c->addr == *(addr_8607 + i))
   return CHIP_PM8607;
 }
 return 0;
}
