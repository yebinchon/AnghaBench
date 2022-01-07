
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan9303 {int dummy; } ;


 int ETIMEDOUT ;
 int lan9303_read_switch_reg (struct lan9303*,int,int*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int lan9303_csr_reg_wait(struct lan9303 *chip, int regno, u32 mask)
{
 int i;

 for (i = 0; i < 25; i++) {
  u32 reg;

  lan9303_read_switch_reg(chip, regno, &reg);
  if (!(reg & mask))
   return 0;
  usleep_range(1000, 2000);
 }

 return -ETIMEDOUT;
}
