
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct cx25840_state {int generic_mode; int vid_config; } ;


 int CX25840_VCONFIG_ACTIVE_HORIZONTAL ;
 int CX25840_VCONFIG_ANCDATA_ENABLED ;
 int CX25840_VCONFIG_CLKGATE_NONE ;
 int CX25840_VCONFIG_DCMODE_DWORDS ;
 int CX25840_VCONFIG_FMT_BT656 ;
 int CX25840_VCONFIG_HRESETW_NORMAL ;
 int CX25840_VCONFIG_IDID0S_NORMAL ;
 int CX25840_VCONFIG_RES_8BIT ;
 int CX25840_VCONFIG_TASKBIT_ONE ;
 int CX25840_VCONFIG_VALID_NORMAL ;
 int CX25840_VCONFIG_VBIRAW_DISABLED ;
 int CX25840_VCONFIG_VIPCLAMP_DISABLED ;
 int WARN_ON (int) ;
 int cx25840_vconfig_add (struct cx25840_state*,int ) ;
 scalar_t__ is_cx2584x (struct cx25840_state*) ;
 struct cx25840_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int cx25840_init(struct v4l2_subdev *sd, u32 val)
{
 struct cx25840_state *state = to_state(sd);

 state->generic_mode = 1;

 if (is_cx2584x(state)) {

  state->vid_config = CX25840_VCONFIG_FMT_BT656 |
        CX25840_VCONFIG_RES_8BIT |
        CX25840_VCONFIG_VBIRAW_DISABLED |
        CX25840_VCONFIG_ANCDATA_ENABLED |
        CX25840_VCONFIG_TASKBIT_ONE |
        CX25840_VCONFIG_ACTIVE_HORIZONTAL |
        CX25840_VCONFIG_VALID_NORMAL |
        CX25840_VCONFIG_HRESETW_NORMAL |
        CX25840_VCONFIG_CLKGATE_NONE |
        CX25840_VCONFIG_DCMODE_DWORDS |
        CX25840_VCONFIG_IDID0S_NORMAL |
        CX25840_VCONFIG_VIPCLAMP_DISABLED;


  cx25840_vconfig_add(state, val);
 } else {

  WARN_ON(1);
 }

 return 0;
}
