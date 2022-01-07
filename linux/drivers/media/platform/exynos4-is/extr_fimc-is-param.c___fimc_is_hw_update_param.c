
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_13__ {int config; int dma_input; int otf_input; int control; } ;
struct TYPE_11__ {int otf_output; int dma_input; int otf_input; int control; } ;
struct TYPE_9__ {int dma2_output; int dma1_output; int otf_output; int afc; int metering; int adjust; int iso; int effect; int awb; int flash; int aa; int dma2_input; int dma1_input; int otf_input; int control; } ;
struct is_param_region {TYPE_6__ fd; TYPE_4__ drc; TYPE_2__ isp; } ;
struct fimc_is {size_t config_index; struct chain_config* config; TYPE_1__* is_p_region; } ;
struct TYPE_14__ {int config; int dma_input; int otf_input; int control; } ;
struct TYPE_12__ {int otf_output; int dma_input; int otf_input; int control; } ;
struct TYPE_10__ {int dma2_output; int dma1_output; int otf_output; int afc; int metering; int adjust; int iso; int effect; int awb; int flash; int aa; int dma2_input; int dma1_input; int otf_input; int control; } ;
struct chain_config {TYPE_7__ fd; TYPE_5__ drc; TYPE_3__ isp; } ;
struct TYPE_8__ {struct is_param_region parameter; } ;


 int EINVAL ;
 int __hw_param_copy (int *,int *) ;

int __fimc_is_hw_update_param(struct fimc_is *is, u32 offset)
{
 struct is_param_region *par = &is->is_p_region->parameter;
 struct chain_config *cfg = &is->config[is->config_index];

 switch (offset) {
 case 138:
  __hw_param_copy(&par->isp.control, &cfg->isp.control);
  break;

 case 129:
  __hw_param_copy(&par->isp.otf_input, &cfg->isp.otf_input);
  break;

 case 137:
  __hw_param_copy(&par->isp.dma1_input, &cfg->isp.dma1_input);
  break;

 case 135:
  __hw_param_copy(&par->isp.dma2_input, &cfg->isp.dma2_input);
  break;

 case 142:
  __hw_param_copy(&par->isp.aa, &cfg->isp.aa);
  break;

 case 133:
  __hw_param_copy(&par->isp.flash, &cfg->isp.flash);
  break;

 case 139:
  __hw_param_copy(&par->isp.awb, &cfg->isp.awb);
  break;

 case 132:
  __hw_param_copy(&par->isp.effect, &cfg->isp.effect);
  break;

 case 131:
  __hw_param_copy(&par->isp.iso, &cfg->isp.iso);
  break;

 case 141:
  __hw_param_copy(&par->isp.adjust, &cfg->isp.adjust);
  break;

 case 130:
  __hw_param_copy(&par->isp.metering, &cfg->isp.metering);
  break;

 case 140:
  __hw_param_copy(&par->isp.afc, &cfg->isp.afc);
  break;

 case 128:
  __hw_param_copy(&par->isp.otf_output, &cfg->isp.otf_output);
  break;

 case 136:
  __hw_param_copy(&par->isp.dma1_output, &cfg->isp.dma1_output);
  break;

 case 134:
  __hw_param_copy(&par->isp.dma2_output, &cfg->isp.dma2_output);
  break;

 case 150:
  __hw_param_copy(&par->drc.control, &cfg->drc.control);
  break;

 case 148:
  __hw_param_copy(&par->drc.otf_input, &cfg->drc.otf_input);
  break;

 case 149:
  __hw_param_copy(&par->drc.dma_input, &cfg->drc.dma_input);
  break;

 case 147:
  __hw_param_copy(&par->drc.otf_output, &cfg->drc.otf_output);
  break;

 case 145:
  __hw_param_copy(&par->fd.control, &cfg->fd.control);
  break;

 case 143:
  __hw_param_copy(&par->fd.otf_input, &cfg->fd.otf_input);
  break;

 case 144:
  __hw_param_copy(&par->fd.dma_input, &cfg->fd.dma_input);
  break;

 case 146:
  __hw_param_copy(&par->fd.config, &cfg->fd.config);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
