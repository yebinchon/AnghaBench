
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_4__ {int op_format_mode_sel; } ;
struct adv7842_state {TYPE_1__* format; TYPE_2__ pdata; struct v4l2_subdev sd; } ;
struct TYPE_3__ {int op_format_sel; scalar_t__ swap_cb_cr; scalar_t__ rgb_out; } ;


 int ADV7842_OP_SWAP_CB_CR ;
 int ADV7842_RGB_OUT ;
 int adv7842_op_ch_sel (struct adv7842_state*) ;
 int io_write (struct v4l2_subdev*,int,int) ;
 int io_write_clr_set (struct v4l2_subdev*,int,int,int ) ;
 int set_rgb_quantization_range (struct v4l2_subdev*) ;

__attribute__((used)) static void adv7842_setup_format(struct adv7842_state *state)
{
 struct v4l2_subdev *sd = &state->sd;

 io_write_clr_set(sd, 0x02, 0x02,
   state->format->rgb_out ? ADV7842_RGB_OUT : 0);
 io_write(sd, 0x03, state->format->op_format_sel |
   state->pdata.op_format_mode_sel);
 io_write_clr_set(sd, 0x04, 0xe0, adv7842_op_ch_sel(state));
 io_write_clr_set(sd, 0x05, 0x01,
   state->format->swap_cb_cr ? ADV7842_OP_SWAP_CB_CR : 0);
 set_rgb_quantization_range(sd);
}
