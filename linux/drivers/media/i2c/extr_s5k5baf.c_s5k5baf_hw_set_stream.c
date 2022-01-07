
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5k5baf {int dummy; } ;


 int REG_G_ENABLE_PREV ;
 int s5k5baf_write_seq (struct s5k5baf*,int ,int,int) ;

__attribute__((used)) static void s5k5baf_hw_set_stream(struct s5k5baf *state, int enable)
{
 s5k5baf_write_seq(state, REG_G_ENABLE_PREV, enable, 1);
}
