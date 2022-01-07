
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5k5baf {int dummy; } ;


 int REG_SF_USR_EXPOSURE_L ;
 int s5k5baf_write_seq (struct s5k5baf*,int ,unsigned int,unsigned int,int) ;

__attribute__((used)) static void s5k5baf_hw_set_user_exposure(struct s5k5baf *state, int exposure)
{
 unsigned int time = exposure / 10;

 s5k5baf_write_seq(state, REG_SF_USR_EXPOSURE_L,
     time & 0xffff, time >> 16, 1);
}
