
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ enable; } ;
struct ccdc_config_params_raw {scalar_t__ data_sz; TYPE_3__ alaw; } ;
struct TYPE_7__ {int width; } ;
struct TYPE_8__ {TYPE_1__ win; } ;
struct TYPE_10__ {unsigned int width; } ;
struct TYPE_11__ {TYPE_4__ win; struct ccdc_config_params_raw config_params; } ;
struct TYPE_12__ {scalar_t__ if_type; TYPE_2__ ycbcr; TYPE_5__ bayer; } ;


 unsigned int ALIGN (unsigned int,int) ;
 scalar_t__ CCDC_DATA_8BITS ;
 scalar_t__ VPFE_RAW_BAYER ;
 TYPE_6__ ccdc_cfg ;

__attribute__((used)) static unsigned int ccdc_get_line_length(void)
{
 struct ccdc_config_params_raw *config_params =
    &ccdc_cfg.bayer.config_params;
 unsigned int len;

 if (ccdc_cfg.if_type == VPFE_RAW_BAYER) {
  if ((config_params->alaw.enable) ||
      (config_params->data_sz == CCDC_DATA_8BITS))
   len = ccdc_cfg.bayer.win.width;
  else
   len = ccdc_cfg.bayer.win.width * 2;
 } else
  len = ccdc_cfg.ycbcr.win.width * 2;
 return ALIGN(len, 32);
}
