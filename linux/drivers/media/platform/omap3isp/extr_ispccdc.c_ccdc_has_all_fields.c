
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct isp_pipeline {int field; } ;
struct isp_device {int dummy; } ;
struct TYPE_4__ {int entity; } ;
struct isp_ccdc_device {int fields; TYPE_1__* formats; TYPE_2__ subdev; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
struct TYPE_3__ {int field; } ;


 int CCDC_FIELD_BOTH ;
 int CCDC_FIELD_BOTTOM ;
 int CCDC_FIELD_TOP ;
 size_t CCDC_PAD_SOURCE_OF ;
 int ISPCCDC_SYN_MODE ;
 int ISPCCDC_SYN_MODE_FLDSTAT ;
 int OMAP3_ISP_IOMEM_CCDC ;
 int V4L2_FIELD_ALTERNATE ;
 int V4L2_FIELD_BOTTOM ;
 int V4L2_FIELD_INTERLACED_BT ;
 int V4L2_FIELD_INTERLACED_TB ;
 int V4L2_FIELD_NONE ;
 int V4L2_FIELD_TOP ;
 int isp_reg_readl (struct isp_device*,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_ccdc_device*) ;
 struct isp_pipeline* to_isp_pipeline (int *) ;

__attribute__((used)) static bool ccdc_has_all_fields(struct isp_ccdc_device *ccdc)
{
 struct isp_pipeline *pipe = to_isp_pipeline(&ccdc->subdev.entity);
 struct isp_device *isp = to_isp_device(ccdc);
 enum v4l2_field of_field = ccdc->formats[CCDC_PAD_SOURCE_OF].field;
 enum v4l2_field field;


 if (of_field == V4L2_FIELD_NONE)
  return 1;


 field = isp_reg_readl(isp, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_SYN_MODE)
       & ISPCCDC_SYN_MODE_FLDSTAT
       ? V4L2_FIELD_BOTTOM : V4L2_FIELD_TOP;




 if (of_field == V4L2_FIELD_ALTERNATE) {
  pipe->field = field;
  return 1;
 }


 ccdc->fields |= field == V4L2_FIELD_BOTTOM
        ? CCDC_FIELD_BOTTOM : CCDC_FIELD_TOP;

 if (ccdc->fields != CCDC_FIELD_BOTH)
  return 0;




 if ((of_field == V4L2_FIELD_INTERLACED_TB && field == V4L2_FIELD_TOP) ||
     (of_field == V4L2_FIELD_INTERLACED_BT && field == V4L2_FIELD_BOTTOM))
  return 0;


 ccdc->fields = 0;

 return 1;
}
