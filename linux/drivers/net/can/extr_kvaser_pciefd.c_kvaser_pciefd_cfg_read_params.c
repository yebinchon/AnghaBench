
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvaser_pciefd_cfg_param {int len; int data; } ;
struct kvaser_pciefd_cfg_img {struct kvaser_pciefd_cfg_param* params; } ;
struct kvaser_pciefd {int nr_channels; } ;


 size_t KVASER_PCIEFD_CFG_PARAM_NR_CHAN ;
 int le32_to_cpu (int ) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static void kvaser_pciefd_cfg_read_params(struct kvaser_pciefd *pcie,
       struct kvaser_pciefd_cfg_img *img)
{
 struct kvaser_pciefd_cfg_param *param;

 param = &img->params[KVASER_PCIEFD_CFG_PARAM_NR_CHAN];
 memcpy(&pcie->nr_channels, param->data, le32_to_cpu(param->len));
}
