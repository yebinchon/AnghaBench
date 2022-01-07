
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct tda1997x_state {int lock; struct v4l2_subdev sd; } ;
typedef int irqreturn_t ;


 int INTERRUPT_AUDIO ;
 int INTERRUPT_DDC ;
 int INTERRUPT_HDCP ;
 int INTERRUPT_INFO ;
 int INTERRUPT_RATE ;
 int INTERRUPT_SUS ;
 int IRQ_HANDLED ;
 int REG_INT_FLG_CLR_TOP ;
 int io_read (struct v4l2_subdev*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tda1997x_irq_audio (struct tda1997x_state*,int*) ;
 int tda1997x_irq_ddc (struct tda1997x_state*,int*) ;
 int tda1997x_irq_hdcp (struct tda1997x_state*,int*) ;
 int tda1997x_irq_info (struct tda1997x_state*,int*) ;
 int tda1997x_irq_rate (struct tda1997x_state*,int*) ;
 int tda1997x_irq_sus (struct tda1997x_state*,int*) ;

__attribute__((used)) static irqreturn_t tda1997x_isr_thread(int irq, void *d)
{
 struct tda1997x_state *state = d;
 struct v4l2_subdev *sd = &state->sd;
 u8 flags;

 mutex_lock(&state->lock);
 do {

  flags = io_read(sd, REG_INT_FLG_CLR_TOP);
  if (flags == 0)
   break;


  if (flags & INTERRUPT_SUS)
   tda1997x_irq_sus(state, &flags);

  else if (flags & INTERRUPT_DDC)
   tda1997x_irq_ddc(state, &flags);

  else if (flags & INTERRUPT_RATE)
   tda1997x_irq_rate(state, &flags);

  else if (flags & INTERRUPT_INFO)
   tda1997x_irq_info(state, &flags);



  else if (flags & INTERRUPT_AUDIO)
   tda1997x_irq_audio(state, &flags);

  if (flags & INTERRUPT_HDCP)
   tda1997x_irq_hdcp(state, &flags);
 } while (flags != 0);
 mutex_unlock(&state->lock);

 return IRQ_HANDLED;
}
