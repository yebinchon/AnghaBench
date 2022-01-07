
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct saa717x_state {int input; int tuner_audio_mode; } ;


 int EINVAL ;
 int TUNER_AUDIO_STEREO ;
 int debug ;
 int reg_init_composite_input ;
 int reg_init_svideo_input ;
 int reg_init_tuner_input ;
 int saa717x_read (struct v4l2_subdev*,int) ;
 int saa717x_write (struct v4l2_subdev*,int,int) ;
 int saa717x_write_regs (struct v4l2_subdev*,int ) ;
 int set_audio_mode (struct v4l2_subdev*,int ) ;
 struct saa717x_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,...) ;

__attribute__((used)) static int saa717x_s_video_routing(struct v4l2_subdev *sd,
       u32 input, u32 output, u32 config)
{
 struct saa717x_state *decoder = to_state(sd);
 int is_tuner = input & 0x80;

 input &= 0x7f;

 v4l2_dbg(1, debug, sd, "decoder set input (%d)\n", input);


 if (input > 9 || input == 5)
  return -EINVAL;

 if (decoder->input != input) {
  int input_line = input;

  decoder->input = input_line;
  v4l2_dbg(1, debug, sd, "now setting %s input %d\n",
    input_line >= 6 ? "S-Video" : "Composite",
    input_line);


  saa717x_write(sd, 0x102,
    (saa717x_read(sd, 0x102) & 0xf0) |
    input_line);


  saa717x_write(sd, 0x109,
    (saa717x_read(sd, 0x109) & 0x7f) |
    (input_line < 6 ? 0x0 : 0x80));


  if (is_tuner) {

   set_audio_mode(sd, decoder->tuner_audio_mode);
  } else {


   set_audio_mode(sd, TUNER_AUDIO_STEREO);
  }

  if (is_tuner)
   saa717x_write_regs(sd, reg_init_tuner_input);
  else if (input_line >= 6)
   saa717x_write_regs(sd, reg_init_svideo_input);
  else
   saa717x_write_regs(sd, reg_init_composite_input);
 }

 return 0;
}
