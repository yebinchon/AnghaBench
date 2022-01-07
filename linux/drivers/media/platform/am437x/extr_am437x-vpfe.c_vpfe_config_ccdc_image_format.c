
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int field; int pixelformat; } ;
struct TYPE_5__ {TYPE_1__ pix; } ;
struct TYPE_6__ {TYPE_2__ fmt; } ;
struct vpfe_device {int ccdc; TYPE_3__ fmt; int bpp; int crop; } ;
typedef enum ccdc_frmfmt { ____Placeholder_ccdc_frmfmt } ccdc_frmfmt ;


 int CCDC_BUFTYPE_FLD_INTERLEAVED ;
 int CCDC_BUFTYPE_FLD_SEPARATED ;
 int CCDC_FRMFMT_INTERLACED ;
 int CCDC_FRMFMT_PROGRESSIVE ;
 int EINVAL ;



 int print_fourcc (int ) ;
 int vpfe_ccdc_set_buftype (int *,int ) ;
 int vpfe_ccdc_set_frame_format (int *,int) ;
 int vpfe_ccdc_set_image_window (int *,int *,int ) ;
 scalar_t__ vpfe_ccdc_set_pixel_format (int *,int ) ;
 int vpfe_dbg (int,struct vpfe_device*,char*,...) ;
 int vpfe_err (struct vpfe_device*,char*) ;

__attribute__((used)) static int vpfe_config_ccdc_image_format(struct vpfe_device *vpfe)
{
 enum ccdc_frmfmt frm_fmt = CCDC_FRMFMT_INTERLACED;
 int ret = 0;

 vpfe_dbg(2, vpfe, "vpfe_config_ccdc_image_format\n");

 vpfe_dbg(1, vpfe, "pixelformat: %s\n",
  print_fourcc(vpfe->fmt.fmt.pix.pixelformat));

 if (vpfe_ccdc_set_pixel_format(&vpfe->ccdc,
   vpfe->fmt.fmt.pix.pixelformat) < 0) {
  vpfe_err(vpfe, "couldn't set pix format in ccdc\n");
  return -EINVAL;
 }


 vpfe_ccdc_set_image_window(&vpfe->ccdc, &vpfe->crop, vpfe->bpp);

 switch (vpfe->fmt.fmt.pix.field) {
 case 130:

  ret = vpfe_ccdc_set_buftype(
    &vpfe->ccdc,
    CCDC_BUFTYPE_FLD_INTERLEAVED);
  break;

 case 129:
  frm_fmt = CCDC_FRMFMT_PROGRESSIVE;

  break;

 case 128:
  ret = vpfe_ccdc_set_buftype(
    &vpfe->ccdc,
    CCDC_BUFTYPE_FLD_SEPARATED);
  break;

 default:
  return -EINVAL;
 }

 if (ret)
  return ret;

 return vpfe_ccdc_set_frame_format(&vpfe->ccdc, frm_fmt);
}
