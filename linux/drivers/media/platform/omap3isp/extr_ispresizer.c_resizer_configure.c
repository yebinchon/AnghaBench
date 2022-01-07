
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {int width; int height; int code; } ;
struct resizer_luma_yenh {int member_3; int member_2; int member_1; int member_0; } ;
struct isp_res_device {scalar_t__ input; struct v4l2_mbus_framefmt* formats; } ;


 int ALIGN (int,int) ;
 int DEFAULT_PHASE ;
 scalar_t__ RESIZER_INPUT_VP ;
 size_t RESZ_PAD_SINK ;
 size_t RESZ_PAD_SOURCE ;
 int RSZ_YUV422 ;
 int resizer_set_crop_params (struct isp_res_device*,struct v4l2_mbus_framefmt*,struct v4l2_mbus_framefmt*) ;
 int resizer_set_input_offset (struct isp_res_device*,int) ;
 int resizer_set_intype (struct isp_res_device*,int ) ;
 int resizer_set_luma (struct isp_res_device*,struct resizer_luma_yenh*) ;
 int resizer_set_output_offset (struct isp_res_device*,int) ;
 int resizer_set_output_size (struct isp_res_device*,int,int ) ;
 int resizer_set_phase (struct isp_res_device*,int ,int ) ;
 int resizer_set_source (struct isp_res_device*,scalar_t__) ;
 int resizer_set_ycpos (struct isp_res_device*,int ) ;

__attribute__((used)) static void resizer_configure(struct isp_res_device *res)
{
 struct v4l2_mbus_framefmt *informat, *outformat;
 struct resizer_luma_yenh luma = {0, 0, 0, 0};

 resizer_set_source(res, res->input);

 informat = &res->formats[RESZ_PAD_SINK];
 outformat = &res->formats[RESZ_PAD_SOURCE];


 if (res->input == RESIZER_INPUT_VP)
  resizer_set_input_offset(res, 0);
 else
  resizer_set_input_offset(res, ALIGN(informat->width, 0x10) * 2);


 resizer_set_intype(res, RSZ_YUV422);
 resizer_set_ycpos(res, informat->code);
 resizer_set_phase(res, DEFAULT_PHASE, DEFAULT_PHASE);
 resizer_set_luma(res, &luma);


 resizer_set_output_offset(res, ALIGN(outformat->width * 2, 32));
 resizer_set_output_size(res, outformat->width, outformat->height);

 resizer_set_crop_params(res, informat, outformat);
}
