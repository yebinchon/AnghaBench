
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int field; int pixelformat; } ;
struct TYPE_7__ {TYPE_1__ pix; } ;
struct TYPE_8__ {TYPE_2__ fmt; } ;
struct vpfe_device {TYPE_3__ fmt; int crop; int v4l2_dev; } ;
typedef enum ccdc_frmfmt { ____Placeholder_ccdc_frmfmt } ccdc_frmfmt ;
struct TYPE_9__ {scalar_t__ (* set_pixel_format ) (int ) ;int (* set_buftype ) (int ) ;int (* set_frame_format ) (int) ;int (* set_image_window ) (int *) ;} ;
struct TYPE_10__ {TYPE_4__ hw_ops; } ;


 int CCDC_BUFTYPE_FLD_INTERLEAVED ;
 int CCDC_BUFTYPE_FLD_SEPARATED ;
 int CCDC_FRMFMT_INTERLACED ;
 int CCDC_FRMFMT_PROGRESSIVE ;
 int EINVAL ;



 TYPE_5__* ccdc_dev ;
 scalar_t__ stub1 (int ) ;
 int stub2 (int *) ;
 int stub3 (int ) ;
 int stub4 (int ) ;
 int stub5 (int) ;
 int v4l2_err (int *,char*) ;

__attribute__((used)) static int vpfe_config_ccdc_image_format(struct vpfe_device *vpfe_dev)
{
 enum ccdc_frmfmt frm_fmt = CCDC_FRMFMT_INTERLACED;
 int ret = 0;

 if (ccdc_dev->hw_ops.set_pixel_format(
   vpfe_dev->fmt.fmt.pix.pixelformat) < 0) {
  v4l2_err(&vpfe_dev->v4l2_dev,
   "couldn't set pix format in ccdc\n");
  return -EINVAL;
 }

 ccdc_dev->hw_ops.set_image_window(&vpfe_dev->crop);

 switch (vpfe_dev->fmt.fmt.pix.field) {
 case 130:

  ret = ccdc_dev->hw_ops.set_buftype(
    CCDC_BUFTYPE_FLD_INTERLEAVED);
  break;
 case 129:
  frm_fmt = CCDC_FRMFMT_PROGRESSIVE;

  break;
 case 128:
  ret = ccdc_dev->hw_ops.set_buftype(
    CCDC_BUFTYPE_FLD_SEPARATED);
  break;
 default:
  return -EINVAL;
 }


 if (!ret)
  ret = ccdc_dev->hw_ops.set_frame_format(frm_fmt);
 return ret;
}
