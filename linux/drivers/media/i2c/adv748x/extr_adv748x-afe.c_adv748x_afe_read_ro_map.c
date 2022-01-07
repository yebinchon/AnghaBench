
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adv748x_state {int dummy; } ;


 int ADV748X_SDP_MAP_SEL ;
 int ADV748X_SDP_MAP_SEL_RO_MAIN ;
 int sdp_read (struct adv748x_state*,int ) ;
 int sdp_write (struct adv748x_state*,int ,int ) ;

__attribute__((used)) static int adv748x_afe_read_ro_map(struct adv748x_state *state, u8 reg)
{
 int ret;


 ret = sdp_write(state, ADV748X_SDP_MAP_SEL,
   ADV748X_SDP_MAP_SEL_RO_MAIN);
 if (ret < 0)
  return ret;

 return sdp_read(state, reg);
}
