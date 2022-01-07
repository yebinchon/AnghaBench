
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct tda1997x_state {int activity_status; scalar_t__ chip_revision; int* input_detect; int client; struct v4l2_subdev sd; } ;


 int MASK_RATE_A_ST ;
 int MASK_RATE_B_ST ;
 int PIX_REPEAT_MASK_REP ;
 int PIX_REPEAT_MASK_UP_SEL ;
 int REG_INT_FLG_CLR_RATE ;
 int REG_PIX_REPEAT ;
 int io_read (struct v4l2_subdev*,int ) ;
 int io_write (struct v4l2_subdev*,int ,int) ;
 int tda1997x_ev_fmt ;
 int tda1997x_read_activity_status_regs (struct v4l2_subdev*) ;
 int tda1997x_reset_n1 (struct tda1997x_state*) ;
 int v4l2_subdev_notify_event (struct v4l2_subdev*,int *) ;
 int v4l_info (int ,char*,int) ;

__attribute__((used)) static void tda1997x_irq_rate(struct tda1997x_state *state, u8 *flags)
{
 struct v4l2_subdev *sd = &state->sd;
 u8 reg, source;

 u8 irq_status;

 source = io_read(sd, REG_INT_FLG_CLR_RATE);
 io_write(sd, REG_INT_FLG_CLR_RATE, source);


 irq_status = tda1997x_read_activity_status_regs(sd);





 reg = source;
 while (reg != 0) {
  irq_status = tda1997x_read_activity_status_regs(sd);
  reg = io_read(sd, REG_INT_FLG_CLR_RATE);
  io_write(sd, REG_INT_FLG_CLR_RATE, reg);
  source |= reg;
 }


 if (source & (MASK_RATE_A_ST | MASK_RATE_B_ST)) {
  int input = (source & MASK_RATE_A_ST)?0:1;
  u8 mask = 1<<input;


  if ((irq_status & mask) != (state->activity_status & mask)) {

   if ((irq_status & mask) == 0) {
    v4l_info(state->client,
      "HDMI-%c: Digital Activity Lost\n",
      input+'A');


    reg = io_read(sd, REG_PIX_REPEAT);
    reg &= ~PIX_REPEAT_MASK_UP_SEL;
    reg &= ~PIX_REPEAT_MASK_REP;
    io_write(sd, REG_PIX_REPEAT, reg);

    if (state->chip_revision == 0)
     tda1997x_reset_n1(state);

    state->input_detect[input] = 0;
    v4l2_subdev_notify_event(sd, &tda1997x_ev_fmt);
   }


   else {
    v4l_info(state->client,
      "HDMI-%c: Digital Activity Detected\n",
      input+'A');
    state->input_detect[input] = 1;
   }


   state->activity_status = (irq_status & mask);
  }
 }
}
