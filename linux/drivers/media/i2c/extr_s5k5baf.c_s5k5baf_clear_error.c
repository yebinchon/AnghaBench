
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5k5baf {int error; } ;



__attribute__((used)) static int s5k5baf_clear_error(struct s5k5baf *state)
{
 int ret = state->error;

 state->error = 0;
 return ret;
}
