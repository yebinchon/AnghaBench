
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;


 int ad9389b_rd (struct v4l2_subdev*,int) ;
 int ad9389b_wr (struct v4l2_subdev*,int,int) ;

__attribute__((used)) static inline void ad9389b_wr_and_or(struct v4l2_subdev *sd, u8 reg,
         u8 clr_mask, u8 val_mask)
{
 ad9389b_wr(sd, reg, (ad9389b_rd(sd, reg) & clr_mask) | val_mask);
}
