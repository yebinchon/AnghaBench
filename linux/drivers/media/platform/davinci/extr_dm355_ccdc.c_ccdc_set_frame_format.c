
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef enum ccdc_frmfmt { ____Placeholder_ccdc_frmfmt } ccdc_frmfmt ;
struct TYPE_5__ {int frm_fmt; } ;
struct TYPE_4__ {int frm_fmt; } ;
struct TYPE_6__ {scalar_t__ if_type; TYPE_2__ ycbcr; TYPE_1__ bayer; } ;


 scalar_t__ VPFE_RAW_BAYER ;
 TYPE_3__ ccdc_cfg ;

__attribute__((used)) static int ccdc_set_frame_format(enum ccdc_frmfmt frm_fmt)
{
 if (ccdc_cfg.if_type == VPFE_RAW_BAYER)
  ccdc_cfg.bayer.frm_fmt = frm_fmt;
 else
  ccdc_cfg.ycbcr.frm_fmt = frm_fmt;
 return 0;
}
