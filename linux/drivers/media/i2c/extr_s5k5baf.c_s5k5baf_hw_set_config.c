
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct v4l2_rect {int height; int width; } ;
struct s5k5baf {size_t pixfmt; int req_fiv; struct v4l2_rect crop_source; } ;
struct TYPE_2__ {int reg_p_fmt; } ;


 int CLK_MIPI_INDEX ;
 int FR_RATE_FIXED ;
 int FR_RATE_Q_DYNAMIC ;
 int PCLK_MAX_FREQ ;
 int PCLK_MIN_FREQ ;
 int PVI_MASK_MIPI ;
 int REG_P_OUT_WIDTH (int ) ;
 int S5K5BAF_MIN_FR_TIME ;
 TYPE_1__* s5k5baf_formats ;
 int s5k5baf_hw_sync_cfg (struct s5k5baf*) ;
 int s5k5baf_hw_validate_cfg (struct s5k5baf*) ;
 int s5k5baf_write_seq (struct s5k5baf*,int ,int ,int ,int ,int,int,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void s5k5baf_hw_set_config(struct s5k5baf *state)
{
 u16 reg_fmt = s5k5baf_formats[state->pixfmt].reg_p_fmt;
 struct v4l2_rect *r = &state->crop_source;

 s5k5baf_write_seq(state, REG_P_OUT_WIDTH(0),
     r->width, r->height, reg_fmt,
     PCLK_MAX_FREQ >> 2, PCLK_MIN_FREQ >> 2,
     PVI_MASK_MIPI, CLK_MIPI_INDEX,
     FR_RATE_FIXED, FR_RATE_Q_DYNAMIC,
     state->req_fiv, S5K5BAF_MIN_FR_TIME);
 s5k5baf_hw_sync_cfg(state);
 s5k5baf_hw_validate_cfg(state);
}
