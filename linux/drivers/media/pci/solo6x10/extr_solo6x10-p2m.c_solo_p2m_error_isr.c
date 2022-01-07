
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_p2m_dev {int error; int completion; } ;
struct solo_dev {struct solo_p2m_dev* p2m_dev; } ;


 int SOLO_NR_P2M ;
 int SOLO_P2M_CONTROL (int) ;
 int SOLO_PCI_ERR ;
 unsigned int SOLO_PCI_ERR_P2M ;
 unsigned int SOLO_PCI_ERR_P2M_DESC ;
 int complete (int *) ;
 unsigned int solo_reg_read (struct solo_dev*,int ) ;
 int solo_reg_write (struct solo_dev*,int ,int ) ;

void solo_p2m_error_isr(struct solo_dev *solo_dev)
{
 unsigned int err = solo_reg_read(solo_dev, SOLO_PCI_ERR);
 struct solo_p2m_dev *p2m_dev;
 int i;

 if (!(err & (SOLO_PCI_ERR_P2M | SOLO_PCI_ERR_P2M_DESC)))
  return;

 for (i = 0; i < SOLO_NR_P2M; i++) {
  p2m_dev = &solo_dev->p2m_dev[i];
  p2m_dev->error = 1;
  solo_reg_write(solo_dev, SOLO_P2M_CONTROL(i), 0);
  complete(&p2m_dev->completion);
 }
}
