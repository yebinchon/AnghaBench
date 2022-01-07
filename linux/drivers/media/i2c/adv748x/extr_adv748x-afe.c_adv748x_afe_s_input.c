
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv748x_state {int dummy; } ;
struct adv748x_afe {int dummy; } ;


 int ADV748X_SDP_INSEL ;
 struct adv748x_state* adv748x_afe_to_state (struct adv748x_afe*) ;
 int sdp_write (struct adv748x_state*,int ,unsigned int) ;

__attribute__((used)) static int adv748x_afe_s_input(struct adv748x_afe *afe, unsigned int input)
{
 struct adv748x_state *state = adv748x_afe_to_state(afe);

 return sdp_write(state, ADV748X_SDP_INSEL, input);
}
