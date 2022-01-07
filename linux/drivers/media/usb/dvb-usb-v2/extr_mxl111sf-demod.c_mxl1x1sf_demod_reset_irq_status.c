
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxl111sf_demod_state {int dummy; } ;


 int mxl111sf_demod_write_reg (struct mxl111sf_demod_state*,int,int) ;

__attribute__((used)) static int mxl1x1sf_demod_reset_irq_status(struct mxl111sf_demod_state *state)
{
 return mxl111sf_demod_write_reg(state, 0x0e, 0xff);
}
