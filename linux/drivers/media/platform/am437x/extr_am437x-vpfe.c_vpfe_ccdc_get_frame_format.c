
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int frm_fmt; } ;
struct TYPE_4__ {int frm_fmt; } ;
struct TYPE_6__ {scalar_t__ if_type; TYPE_2__ ycbcr; TYPE_1__ bayer; } ;
struct vpfe_ccdc {TYPE_3__ ccdc_cfg; } ;
typedef enum ccdc_frmfmt { ____Placeholder_ccdc_frmfmt } ccdc_frmfmt ;


 scalar_t__ VPFE_RAW_BAYER ;

__attribute__((used)) static inline enum ccdc_frmfmt
vpfe_ccdc_get_frame_format(struct vpfe_ccdc *ccdc)
{
 if (ccdc->ccdc_cfg.if_type == VPFE_RAW_BAYER)
  return ccdc->ccdc_cfg.bayer.frm_fmt;

 return ccdc->ccdc_cfg.ycbcr.frm_fmt;
}
