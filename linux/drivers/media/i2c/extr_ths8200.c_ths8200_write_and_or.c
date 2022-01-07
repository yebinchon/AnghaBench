
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
struct v4l2_subdev {int dummy; } ;


 int ths8200_read (struct v4l2_subdev*,int ) ;
 int ths8200_write (struct v4l2_subdev*,int ,int) ;

__attribute__((used)) static inline void
ths8200_write_and_or(struct v4l2_subdev *sd, u8 reg,
       uint8_t clr_mask, uint8_t val_mask)
{
 ths8200_write(sd, reg, (ths8200_read(sd, reg) & clr_mask) | val_mask);
}
