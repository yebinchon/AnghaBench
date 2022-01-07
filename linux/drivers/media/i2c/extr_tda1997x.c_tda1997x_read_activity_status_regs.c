
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;


 int LAST_STATE_REACHED ;
 int MASK_CLK_ACTIVE ;
 int MASK_CLK_STABLE ;
 int MASK_SUS_STATE ;
 int MASK_SUS_STATUS ;
 int REG_CLK_A_STATUS ;
 int REG_CLK_B_STATUS ;
 int REG_SUS_STATUS ;
 int io_read (struct v4l2_subdev*,int ) ;

__attribute__((used)) static u8
tda1997x_read_activity_status_regs(struct v4l2_subdev *sd)
{
 u8 reg, status = 0;


 reg = io_read(sd, REG_CLK_A_STATUS);

 if ((reg & MASK_CLK_STABLE) && !(reg & MASK_CLK_ACTIVE))
  reg &= ~MASK_CLK_STABLE;
 status |= ((reg & MASK_CLK_STABLE) >> 2);


 reg = io_read(sd, REG_CLK_B_STATUS);

 if ((reg & MASK_CLK_STABLE) && !(reg & MASK_CLK_ACTIVE))
  reg &= ~MASK_CLK_STABLE;
 status |= ((reg & MASK_CLK_STABLE) >> 1);


 reg = io_read(sd, REG_SUS_STATUS);


 if ((reg & MASK_SUS_STATUS) == LAST_STATE_REACHED)
  status |= MASK_SUS_STATE;
 else
  status &= ~MASK_SUS_STATE;

 return status;
}
