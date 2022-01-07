
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_promisc_param {int vf_id; int enable; } ;


 int HCLGE_PROMISC_EN_BC ;
 int HCLGE_PROMISC_EN_MC ;
 int HCLGE_PROMISC_EN_UC ;
 int memset (struct hclge_promisc_param*,int ,int) ;

void hclge_promisc_param_init(struct hclge_promisc_param *param, bool en_uc,
         bool en_mc, bool en_bc, int vport_id)
{
 if (!param)
  return;

 memset(param, 0, sizeof(struct hclge_promisc_param));
 if (en_uc)
  param->enable = HCLGE_PROMISC_EN_UC;
 if (en_mc)
  param->enable |= HCLGE_PROMISC_EN_MC;
 if (en_bc)
  param->enable |= HCLGE_PROMISC_EN_BC;
 param->vf_id = vport_id;
}
