
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vpfe_hw_if_param {int if_type; } ;
struct TYPE_4__ {int pix_fmt; } ;
struct TYPE_5__ {void* pix_order; int pix_fmt; } ;
struct TYPE_6__ {int if_type; int dev; TYPE_1__ bayer; TYPE_2__ ycbcr; } ;


 int CCDC_PIXFMT_RAW ;
 int CCDC_PIXFMT_YCBCR_16BIT ;
 int CCDC_PIXFMT_YCBCR_8BIT ;
 void* CCDC_PIXORDER_CBYCRY ;
 int EINVAL ;






 int dev_dbg (int ,char*) ;
 TYPE_3__ isif_cfg ;

__attribute__((used)) static int isif_set_hw_if_params(struct vpfe_hw_if_param *params)
{
 isif_cfg.if_type = params->if_type;

 switch (params->if_type) {
 case 132:
 case 131:
 case 128:
  isif_cfg.ycbcr.pix_fmt = CCDC_PIXFMT_YCBCR_8BIT;
  isif_cfg.ycbcr.pix_order = CCDC_PIXORDER_CBYCRY;
  break;
 case 133:
 case 129:
  isif_cfg.ycbcr.pix_fmt = CCDC_PIXFMT_YCBCR_16BIT;
  isif_cfg.ycbcr.pix_order = CCDC_PIXORDER_CBYCRY;
  break;
 case 130:
  isif_cfg.bayer.pix_fmt = CCDC_PIXFMT_RAW;
  break;
 default:
  dev_dbg(isif_cfg.dev, "Invalid interface type\n");
  return -EINVAL;
 }

 return 0;
}
