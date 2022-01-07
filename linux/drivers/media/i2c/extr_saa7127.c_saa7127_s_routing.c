
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct v4l2_subdev {int dummy; } ;
struct saa7127_state {scalar_t__ input_type; scalar_t__ output_type; } ;


 int saa7127_set_input_type (struct v4l2_subdev*,scalar_t__) ;
 int saa7127_set_output_type (struct v4l2_subdev*,scalar_t__) ;
 struct saa7127_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int saa7127_s_routing(struct v4l2_subdev *sd,
        u32 input, u32 output, u32 config)
{
 struct saa7127_state *state = to_state(sd);
 int rc = 0;

 if (state->input_type != input)
  rc = saa7127_set_input_type(sd, input);
 if (rc == 0 && state->output_type != output)
  rc = saa7127_set_output_type(sd, output);
 return rc;
}
