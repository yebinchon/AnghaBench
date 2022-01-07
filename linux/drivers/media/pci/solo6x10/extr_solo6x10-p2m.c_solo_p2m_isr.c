
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_p2m_dev {size_t desc_count; size_t desc_idx; struct solo_p2m_desc* descs; int completion; } ;
struct solo_p2m_desc {int ctrl; int cfg; int ext_addr; int dma_addr; } ;
struct solo_dev {struct solo_p2m_dev* p2m_dev; } ;


 int SOLO_P2M_CONTROL (int) ;
 int SOLO_P2M_EXT_ADR (int) ;
 int SOLO_P2M_EXT_CFG (int) ;
 int SOLO_P2M_TAR_ADR (int) ;
 int complete (int *) ;
 int solo_reg_write (struct solo_dev*,int ,int ) ;

void solo_p2m_isr(struct solo_dev *solo_dev, int id)
{
 struct solo_p2m_dev *p2m_dev = &solo_dev->p2m_dev[id];
 struct solo_p2m_desc *desc;

 if (p2m_dev->desc_count <= p2m_dev->desc_idx) {
  complete(&p2m_dev->completion);
  return;
 }


 p2m_dev->desc_idx++;
 desc = &p2m_dev->descs[p2m_dev->desc_idx];

 solo_reg_write(solo_dev, SOLO_P2M_CONTROL(id), 0);
 solo_reg_write(solo_dev, SOLO_P2M_TAR_ADR(id), desc->dma_addr);
 solo_reg_write(solo_dev, SOLO_P2M_EXT_ADR(id), desc->ext_addr);
 solo_reg_write(solo_dev, SOLO_P2M_EXT_CFG(id), desc->cfg);
 solo_reg_write(solo_dev, SOLO_P2M_CONTROL(id), desc->ctrl);
}
