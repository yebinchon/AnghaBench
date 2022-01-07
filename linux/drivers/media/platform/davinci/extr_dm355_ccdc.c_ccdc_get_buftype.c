
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef enum ccdc_buftype { ____Placeholder_ccdc_buftype } ccdc_buftype ;
struct TYPE_5__ {int buf_type; } ;
struct TYPE_4__ {int buf_type; } ;
struct TYPE_6__ {scalar_t__ if_type; TYPE_2__ ycbcr; TYPE_1__ bayer; } ;


 scalar_t__ VPFE_RAW_BAYER ;
 TYPE_3__ ccdc_cfg ;

__attribute__((used)) static enum ccdc_buftype ccdc_get_buftype(void)
{
 if (ccdc_cfg.if_type == VPFE_RAW_BAYER)
  return ccdc_cfg.bayer.buf_type;
 return ccdc_cfg.ycbcr.buf_type;
}
