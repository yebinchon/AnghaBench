
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_smi_larb_gen {int* port_in_larb; } ;
struct mtk_smi_larb {size_t larbid; int* mmu; struct device* smi_common_dev; struct mtk_smi_larb_gen* larb_gen; } ;
struct mtk_smi {scalar_t__ smi_ao_base; } ;
struct device {int dummy; } ;


 int BIT (int) ;
 scalar_t__ REG_SMI_SECUR_CON_ADDR (int) ;
 int SMI_SECUR_CON_VAL_DOMAIN (int) ;
 int SMI_SECUR_CON_VAL_MSK (int) ;
 int SMI_SECUR_CON_VAL_VIRT (int) ;
 void* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mtk_smi_larb_config_port_gen1(struct device *dev)
{
 struct mtk_smi_larb *larb = dev_get_drvdata(dev);
 const struct mtk_smi_larb_gen *larb_gen = larb->larb_gen;
 struct mtk_smi *common = dev_get_drvdata(larb->smi_common_dev);
 int i, m4u_port_id, larb_port_num;
 u32 sec_con_val, reg_val;

 m4u_port_id = larb_gen->port_in_larb[larb->larbid];
 larb_port_num = larb_gen->port_in_larb[larb->larbid + 1]
   - larb_gen->port_in_larb[larb->larbid];

 for (i = 0; i < larb_port_num; i++, m4u_port_id++) {
  if (*larb->mmu & BIT(i)) {

   sec_con_val = SMI_SECUR_CON_VAL_VIRT(m4u_port_id);
  } else {

   continue;
  }
  reg_val = readl(common->smi_ao_base
   + REG_SMI_SECUR_CON_ADDR(m4u_port_id));
  reg_val &= SMI_SECUR_CON_VAL_MSK(m4u_port_id);
  reg_val |= sec_con_val;
  reg_val |= SMI_SECUR_CON_VAL_DOMAIN(m4u_port_id);
  writel(reg_val,
   common->smi_ao_base
   + REG_SMI_SECUR_CON_ADDR(m4u_port_id));
 }
}
