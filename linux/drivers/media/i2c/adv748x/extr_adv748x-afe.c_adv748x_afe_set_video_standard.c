
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv748x_state {int dummy; } ;


 int ADV748X_SDP_VID_SEL ;
 int ADV748X_SDP_VID_SEL_MASK ;
 int ADV748X_SDP_VID_SEL_SHIFT ;
 int sdp_clrset (struct adv748x_state*,int ,int ,int) ;

__attribute__((used)) static void adv748x_afe_set_video_standard(struct adv748x_state *state,
       int sdpstd)
{
 sdp_clrset(state, ADV748X_SDP_VID_SEL, ADV748X_SDP_VID_SEL_MASK,
     (sdpstd & 0xf) << ADV748X_SDP_VID_SEL_SHIFT);
}
