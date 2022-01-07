
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpfe_hw_if_param {int if_type; int hdpol; int vdpol; } ;
struct TYPE_3__ {int hd_pol; int vd_pol; } ;
struct TYPE_4__ {int if_type; TYPE_1__ ycbcr; } ;


 int EINVAL ;



 TYPE_2__ ccdc_cfg ;

__attribute__((used)) static int ccdc_set_hw_if_params(struct vpfe_hw_if_param *params)
{
 ccdc_cfg.if_type = params->if_type;

 switch (params->if_type) {
 case 130:
 case 129:
 case 128:
  ccdc_cfg.ycbcr.vd_pol = params->vdpol;
  ccdc_cfg.ycbcr.hd_pol = params->hdpol;
  break;
 default:

  return -EINVAL;
 }
 return 0;
}
