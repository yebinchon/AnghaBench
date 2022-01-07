
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int MASK_AD9389B_MSEN_DETECT ;
 int ad9389b_rd (struct v4l2_subdev*,int) ;

__attribute__((used)) static inline bool ad9389b_have_rx_sense(struct v4l2_subdev *sd)
{
 return ad9389b_rd(sd, 0x42) & MASK_AD9389B_MSEN_DETECT;
}
