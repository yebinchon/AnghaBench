
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct tda1997x_state {struct v4l2_subdev sd; int client; scalar_t__ hdmi_status; scalar_t__ mptrw_in_progress; } ;


 int LAST_STATE_REACHED ;
 int MASK_FMT ;
 int MASK_MPT ;
 int MASK_SR_FIFO_FIFO_CTRL ;
 int MASK_SUS_END ;
 int MASK_SUS_STATUS ;
 int REG_HDMI_INFO_RST ;
 int REG_INT_FLG_CLR_SUS ;
 int REG_SUS_STATUS ;
 scalar_t__ debug ;
 int io_read (struct v4l2_subdev*,int ) ;
 int io_write (struct v4l2_subdev*,int ,int) ;
 int tda1997x_detect_std (struct tda1997x_state*,int *) ;
 int tda1997x_ev_fmt ;
 int v4l2_subdev_notify_event (struct v4l2_subdev*,int *) ;
 int v4l_err (int ,char*) ;

__attribute__((used)) static void tda1997x_irq_sus(struct tda1997x_state *state, u8 *flags)
{
 struct v4l2_subdev *sd = &state->sd;
 u8 reg, source;

 source = io_read(sd, REG_INT_FLG_CLR_SUS);
 io_write(sd, REG_INT_FLG_CLR_SUS, source);

 if (source & MASK_MPT) {

  if (state->mptrw_in_progress)
   state->mptrw_in_progress = 0;
 }

 if (source & MASK_SUS_END) {

  reg = io_read(sd, REG_HDMI_INFO_RST);
  reg |= MASK_SR_FIFO_FIFO_CTRL;
  io_write(sd, REG_HDMI_INFO_RST, reg);
  reg &= ~MASK_SR_FIFO_FIFO_CTRL;
  io_write(sd, REG_HDMI_INFO_RST, reg);


  state->hdmi_status = 0;
 }


 reg = io_read(sd, REG_SUS_STATUS);
 if (((reg & MASK_SUS_STATUS) != LAST_STATE_REACHED)
    || (source & MASK_MPT)) {
  source &= ~MASK_FMT;
 }

 if (source & (MASK_FMT | MASK_SUS_END)) {
  reg = io_read(sd, REG_SUS_STATUS);
  if ((reg & MASK_SUS_STATUS) != LAST_STATE_REACHED) {
   v4l_err(state->client, "BAD SUS STATUS\n");
   return;
  }
  if (debug)
   tda1997x_detect_std(state, ((void*)0));

  v4l2_subdev_notify_event(&state->sd, &tda1997x_ev_fmt);
 }
}
