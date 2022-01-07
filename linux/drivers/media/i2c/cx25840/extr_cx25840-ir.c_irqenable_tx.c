
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct cx25840_state {int c; } ;


 int CX25840_IR_IRQEN_REG ;
 int IRQEN_MSK ;
 int IRQEN_TSE ;
 int cx25840_and_or4 (int ,int ,int ,int ) ;
 scalar_t__ is_cx23885 (struct cx25840_state*) ;
 scalar_t__ is_cx23887 (struct cx25840_state*) ;
 struct cx25840_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static inline void irqenable_tx(struct v4l2_subdev *sd, u32 mask)
{
 struct cx25840_state *state = to_state(sd);

 if (is_cx23885(state) || is_cx23887(state))
  mask ^= IRQEN_MSK;
 mask &= IRQEN_TSE;
 cx25840_and_or4(state->c, CX25840_IR_IRQEN_REG, ~IRQEN_TSE, mask);
}
