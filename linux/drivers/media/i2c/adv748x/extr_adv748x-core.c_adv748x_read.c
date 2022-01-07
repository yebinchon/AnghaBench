
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adv748x_state {int dummy; } ;


 int adv748x_read_check (struct adv748x_state*,int ,int ) ;

int adv748x_read(struct adv748x_state *state, u8 page, u8 reg)
{
 return adv748x_read_check(state, page, reg);
}
