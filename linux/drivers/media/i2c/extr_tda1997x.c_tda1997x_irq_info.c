
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct tda1997x_state {struct v4l2_subdev sd; } ;


 int AUD_IF ;
 int AVI_IF ;
 int MASK_AUD_IF ;
 int MASK_AVI_IF ;
 int MASK_SPD_IF ;
 int REG_INT_FLG_CLR_INFO ;
 int SPD_IF ;
 int io_read (struct v4l2_subdev*,int ) ;
 int io_write (struct v4l2_subdev*,int ,int) ;
 int tda1997x_parse_infoframe (struct tda1997x_state*,int ) ;

__attribute__((used)) static void tda1997x_irq_info(struct tda1997x_state *state, u8 *flags)
{
 struct v4l2_subdev *sd = &state->sd;
 u8 source;

 source = io_read(sd, REG_INT_FLG_CLR_INFO);
 io_write(sd, REG_INT_FLG_CLR_INFO, source);


 if (source & MASK_AUD_IF) {
  tda1997x_parse_infoframe(state, AUD_IF);
  source &= ~MASK_AUD_IF;
 }


 if (source & MASK_SPD_IF) {
  tda1997x_parse_infoframe(state, SPD_IF);
  source &= ~MASK_SPD_IF;
 }


 if (source & MASK_AVI_IF) {
  tda1997x_parse_infoframe(state, AVI_IF);
  source &= ~MASK_AVI_IF;
 }
}
