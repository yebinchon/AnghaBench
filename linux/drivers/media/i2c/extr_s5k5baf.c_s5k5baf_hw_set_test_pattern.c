
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5k5baf {int dummy; } ;


 int REG_PATTERN_HEIGHT ;
 int REG_PATTERN_PARAM ;
 int REG_PATTERN_SET ;
 int REG_PATTERN_WIDTH ;
 int s5k5baf_i2c_write (struct s5k5baf*,int ,int) ;

__attribute__((used)) static void s5k5baf_hw_set_test_pattern(struct s5k5baf *state, int id)
{
 s5k5baf_i2c_write(state, REG_PATTERN_WIDTH, 800);
 s5k5baf_i2c_write(state, REG_PATTERN_HEIGHT, 511);
 s5k5baf_i2c_write(state, REG_PATTERN_PARAM, 0);
 s5k5baf_i2c_write(state, REG_PATTERN_SET, id);
}
