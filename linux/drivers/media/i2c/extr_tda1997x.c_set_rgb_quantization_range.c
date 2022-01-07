
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_hdmi_colorimetry {scalar_t__ ycbcr_enc; size_t quantization; int colorspace; } ;
struct TYPE_6__ {int content_type; int colorimetry; int colorspace; } ;
struct TYPE_4__ {int height; } ;
struct TYPE_5__ {TYPE_1__ bt; } ;
struct tda1997x_state {int rgb_quantization_range; TYPE_3__ avi_infoframe; int client; TYPE_2__ timings; struct v4l2_hdmi_colorimetry colorimetry; } ;




 size_t V4L2_QUANTIZATION_FULL_RANGE ;
 size_t V4L2_QUANTIZATION_LIM_RANGE ;
 scalar_t__ V4L2_YCBCR_ENC_DEFAULT ;
 int debug ;
 struct v4l2_hdmi_colorimetry v4l2_hdmi_rx_colorimetry (TYPE_3__*,int *,int ) ;
 int * v4l2_quantization_names ;
 int v4l_dbg (int,int ,int ,char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
set_rgb_quantization_range(struct tda1997x_state *state)
{
 struct v4l2_hdmi_colorimetry *c = &state->colorimetry;

 state->colorimetry = v4l2_hdmi_rx_colorimetry(&state->avi_infoframe,
            ((void*)0),
            state->timings.bt.height);

 if (c->ycbcr_enc == V4L2_YCBCR_ENC_DEFAULT) {
  switch (state->rgb_quantization_range) {
  case 128:
   c->quantization = V4L2_QUANTIZATION_FULL_RANGE;
   break;
  case 129:
   c->quantization = V4L2_QUANTIZATION_LIM_RANGE;
   break;
  }
 }
 v4l_dbg(1, debug, state->client,
  "colorspace=%d/%d colorimetry=%d range=%s content=%d\n",
  state->avi_infoframe.colorspace, c->colorspace,
  state->avi_infoframe.colorimetry,
  v4l2_quantization_names[c->quantization],
  state->avi_infoframe.content_type);
}
