
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ov965x {int dummy; } ;


 int COM23_TEST_MODE ;
 int REG_COM23 ;
 int ov965x_read (struct ov965x*,int ,int*) ;
 int ov965x_write (struct ov965x*,int ,int) ;

__attribute__((used)) static int ov965x_set_test_pattern(struct ov965x *ov965x, int value)
{
 int ret;
 u8 reg;

 ret = ov965x_read(ov965x, REG_COM23, &reg);
 if (ret < 0)
  return ret;
 reg = value ? reg | COM23_TEST_MODE : reg & ~COM23_TEST_MODE;
 return ov965x_write(ov965x, REG_COM23, reg);
}
