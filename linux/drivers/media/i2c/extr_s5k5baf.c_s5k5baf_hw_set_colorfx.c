
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct s5k5baf {int dummy; } ;


 int REG_G_SPEC_EFFECTS ;






 int s5k5baf_write (struct s5k5baf*,int ,int const) ;

__attribute__((used)) static void s5k5baf_hw_set_colorfx(struct s5k5baf *state, int val)
{
 static const u16 colorfx[] = {
  [131] = 0,
  [133] = 1,
  [132] = 2,
  [130] = 3,
  [128] = 4,
  [129] = 5,
 };

 s5k5baf_write(state, REG_G_SPEC_EFFECTS, colorfx[val]);
}
