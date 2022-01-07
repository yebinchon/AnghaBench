
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct v4l2_subdev {int dummy; } ;
struct saa711x_state {scalar_t__ ident; } ;


 int EINVAL ;
 scalar_t__ SAA7111A ;
 int saa711x_read (struct v4l2_subdev*,int) ;
 int saa711x_write (struct v4l2_subdev*,int,int) ;
 struct saa711x_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int saa711x_s_gpio(struct v4l2_subdev *sd, u32 val)
{
 struct saa711x_state *state = to_state(sd);

 if (state->ident > SAA7111A)
  return -EINVAL;
 saa711x_write(sd, 0x11, (saa711x_read(sd, 0x11) & 0x7f) |
  (val ? 0x80 : 0));
 return 0;
}
