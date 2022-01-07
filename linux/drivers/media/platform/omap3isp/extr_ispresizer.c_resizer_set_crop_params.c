
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_mbus_framefmt {int width; } ;
struct TYPE_4__ {int top; int left; int height; int width; } ;
struct TYPE_5__ {TYPE_1__ active; } ;
struct TYPE_6__ {scalar_t__ horz; } ;
struct isp_res_device {scalar_t__ input; int crop_offset; TYPE_2__ crop; scalar_t__ addr_base; TYPE_3__ ratio; } ;


 scalar_t__ RESIZER_INPUT_MEMORY ;
 scalar_t__ RESIZE_DIVISOR ;
 int RSZ_BILINEAR ;
 int RSZ_THE_SAME ;
 int __resizer_set_inaddr (struct isp_res_device*,scalar_t__) ;
 int resizer_adjust_bandwidth (struct isp_res_device*) ;
 int resizer_set_bilinear (struct isp_res_device*,int ) ;
 int resizer_set_input_offset (struct isp_res_device*,int ) ;
 int resizer_set_input_size (struct isp_res_device*,int ,int ) ;
 int resizer_set_ratio (struct isp_res_device*,TYPE_3__*) ;
 int resizer_set_start (struct isp_res_device*,int,int) ;

__attribute__((used)) static void resizer_set_crop_params(struct isp_res_device *res,
        const struct v4l2_mbus_framefmt *input,
        const struct v4l2_mbus_framefmt *output)
{
 resizer_set_ratio(res, &res->ratio);


 if (res->ratio.horz >= RESIZE_DIVISOR)
  resizer_set_bilinear(res, RSZ_THE_SAME);
 else
  resizer_set_bilinear(res, RSZ_BILINEAR);

 resizer_adjust_bandwidth(res);

 if (res->input == RESIZER_INPUT_MEMORY) {

  res->crop_offset = (res->crop.active.top * input->width +
        res->crop.active.left) * 2;




  resizer_set_start(res, (res->crop_offset / 2) & 0xf, 0);





  __resizer_set_inaddr(res,
    res->addr_base + (res->crop_offset & ~0x1f));
 } else {





  resizer_set_start(res, res->crop.active.left * 2,
      res->crop.active.top);

  __resizer_set_inaddr(res, 0);
  resizer_set_input_offset(res, 0);
 }


 resizer_set_input_size(res, res->crop.active.width,
          res->crop.active.height);
}
