
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct adv7842_state {int * i2c_vdp; int * i2c_cp; int * i2c_hdmi; int * i2c_edid; int * i2c_repeater; int * i2c_afe; int * i2c_sdp; int * i2c_sdp_io; int * i2c_infoframe; int * i2c_cec; int * i2c_avlink; } ;


 int i2c_unregister_device (int *) ;
 struct adv7842_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static void adv7842_unregister_clients(struct v4l2_subdev *sd)
{
 struct adv7842_state *state = to_state(sd);
 i2c_unregister_device(state->i2c_avlink);
 i2c_unregister_device(state->i2c_cec);
 i2c_unregister_device(state->i2c_infoframe);
 i2c_unregister_device(state->i2c_sdp_io);
 i2c_unregister_device(state->i2c_sdp);
 i2c_unregister_device(state->i2c_afe);
 i2c_unregister_device(state->i2c_repeater);
 i2c_unregister_device(state->i2c_edid);
 i2c_unregister_device(state->i2c_hdmi);
 i2c_unregister_device(state->i2c_cp);
 i2c_unregister_device(state->i2c_vdp);

 state->i2c_avlink = ((void*)0);
 state->i2c_cec = ((void*)0);
 state->i2c_infoframe = ((void*)0);
 state->i2c_sdp_io = ((void*)0);
 state->i2c_sdp = ((void*)0);
 state->i2c_afe = ((void*)0);
 state->i2c_repeater = ((void*)0);
 state->i2c_edid = ((void*)0);
 state->i2c_hdmi = ((void*)0);
 state->i2c_cp = ((void*)0);
 state->i2c_vdp = ((void*)0);
}
