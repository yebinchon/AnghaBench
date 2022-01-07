
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5k5baf {int dummy; } ;


 int AHB_MSB_ADDR_PTR ;
 int PAGE_IF_HW ;
 int PAGE_IF_SW ;
 int REG_CLEAR_HOST_INT ;
 int REG_CMDRD_PAGE ;
 int REG_CMDWR_PAGE ;
 int REG_SW_LOAD_COMPLETE ;
 int s5k5baf_i2c_write (struct s5k5baf*,int ,int) ;

__attribute__((used)) static void s5k5baf_hw_init(struct s5k5baf *state)
{
 s5k5baf_i2c_write(state, AHB_MSB_ADDR_PTR, PAGE_IF_HW);
 s5k5baf_i2c_write(state, REG_CLEAR_HOST_INT, 0);
 s5k5baf_i2c_write(state, REG_SW_LOAD_COMPLETE, 1);
 s5k5baf_i2c_write(state, REG_CMDRD_PAGE, PAGE_IF_SW);
 s5k5baf_i2c_write(state, REG_CMDWR_PAGE, PAGE_IF_SW);
}
