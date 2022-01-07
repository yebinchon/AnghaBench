
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct v4l2_subdev {int dummy; } ;
struct saa711x_state {scalar_t__ ident; scalar_t__ input; scalar_t__ output; } ;


 int EINVAL ;
 scalar_t__ GM7113C ;
 int R_02_INPUT_CNTL_1 ;
 int R_09_LUMA_CNTL ;
 int R_10_CHROMA_CNTL_2 ;
 int R_13_RT_X_PORT_OUT_CNTL ;
 int R_83_X_PORT_I_O_ENA_AND_OUT_CLK ;
 int R_85_I_PORT_SIGNAL_POLAR ;
 scalar_t__ SAA7111A ;
 scalar_t__ SAA7113 ;
 scalar_t__ SAA7114 ;
 scalar_t__ SAA7115 ;
 scalar_t__ SAA7115_COMPOSITE4 ;
 scalar_t__ SAA7115_COMPOSITE5 ;
 scalar_t__ SAA7115_IDQ_IS_DEFAULT ;
 scalar_t__ SAA7115_IPORT_ON ;
 scalar_t__ SAA7115_SVIDEO0 ;
 scalar_t__ SAA7115_SVIDEO3 ;
 int debug ;
 int saa711x_read (struct v4l2_subdev*,int ) ;
 int saa711x_write (struct v4l2_subdev*,int ,int) ;
 struct saa711x_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,char*,char*) ;

__attribute__((used)) static int saa711x_s_routing(struct v4l2_subdev *sd,
        u32 input, u32 output, u32 config)
{
 struct saa711x_state *state = to_state(sd);
 u8 mask = (state->ident <= SAA7111A) ? 0xf8 : 0xf0;

 v4l2_dbg(1, debug, sd, "decoder set input %d output %d\n",
  input, output);


 if ((state->ident <= SAA7113 ||
      state->ident == GM7113C) &&
     (input == SAA7115_COMPOSITE4 ||
      input == SAA7115_COMPOSITE5)) {
  return -EINVAL;
 }
 if (input > SAA7115_SVIDEO3)
  return -EINVAL;
 if (state->input == input && state->output == output)
  return 0;
 v4l2_dbg(1, debug, sd, "now setting %s input %s output\n",
  (input >= SAA7115_SVIDEO0) ? "S-Video" : "Composite",
  (output == SAA7115_IPORT_ON) ? "iport on" : "iport off");
 state->input = input;


 if (state->ident <= SAA7111A) {
  if (input >= SAA7115_COMPOSITE4)
   input -= 2;

  saa711x_write(sd, R_10_CHROMA_CNTL_2,
    (saa711x_read(sd, R_10_CHROMA_CNTL_2) & 0x3f) |
    ((output & 0xc0) ^ 0x40));
  saa711x_write(sd, R_13_RT_X_PORT_OUT_CNTL,
    (saa711x_read(sd, R_13_RT_X_PORT_OUT_CNTL) & 0xf0) |
    ((output & 2) ? 0x0a : 0));
 }


 saa711x_write(sd, R_02_INPUT_CNTL_1,
        (saa711x_read(sd, R_02_INPUT_CNTL_1) & mask) |
         input);


 saa711x_write(sd, R_09_LUMA_CNTL,
   (saa711x_read(sd, R_09_LUMA_CNTL) & 0x7f) |
   (state->input >= SAA7115_SVIDEO0 ? 0x80 : 0x0));

 state->output = output;
 if (state->ident == SAA7114 ||
   state->ident == SAA7115) {
  saa711x_write(sd, R_83_X_PORT_I_O_ENA_AND_OUT_CLK,
    (saa711x_read(sd, R_83_X_PORT_I_O_ENA_AND_OUT_CLK) & 0xfe) |
    (state->output & 0x01));
 }
 if (state->ident > SAA7111A) {
  if (config & SAA7115_IDQ_IS_DEFAULT)
   saa711x_write(sd, R_85_I_PORT_SIGNAL_POLAR, 0x20);
  else
   saa711x_write(sd, R_85_I_PORT_SIGNAL_POLAR, 0x21);
 }
 return 0;
}
