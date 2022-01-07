
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv748x_state {int dummy; } ;


 int ADV748X_IO_REG_01 ;
 int ADV748X_IO_REG_01_PWRDNB ;
 int ADV748X_IO_REG_01_PWRDN_MASK ;
 int ADV748X_IO_REG_F2 ;
 int ADV748X_IO_REG_F2_READ_AUTO_INC ;
 int ADV748X_IO_REG_FF ;
 int ADV748X_IO_REG_FF_MAIN_RESET ;
 int io_clrset (struct adv748x_state*,int ,int ,int ) ;
 int io_write (struct adv748x_state*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int adv748x_sw_reset(struct adv748x_state *state)
{
 int ret;

 ret = io_write(state, ADV748X_IO_REG_FF, ADV748X_IO_REG_FF_MAIN_RESET);
 if (ret)
  return ret;

 usleep_range(5000, 6000);


 ret = io_clrset(state, ADV748X_IO_REG_01, ADV748X_IO_REG_01_PWRDN_MASK,
   ADV748X_IO_REG_01_PWRDNB);
 if (ret)
  return ret;


 return io_write(state, ADV748X_IO_REG_F2,
   ADV748X_IO_REG_F2_READ_AUTO_INC);
}
