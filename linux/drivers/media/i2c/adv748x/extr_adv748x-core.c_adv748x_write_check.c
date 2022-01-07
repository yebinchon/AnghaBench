
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adv748x_state {int dummy; } ;


 int adv748x_write (struct adv748x_state*,int ,int ,int ) ;

__attribute__((used)) static int adv748x_write_check(struct adv748x_state *state, u8 page, u8 reg,
          u8 value, int *error)
{
 if (*error)
  return *error;

 *error = adv748x_write(state, page, reg, value);
 return *error;
}
