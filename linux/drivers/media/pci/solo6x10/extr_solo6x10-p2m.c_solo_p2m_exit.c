
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {int dummy; } ;


 int SOLO_IRQ_P2M (int) ;
 int SOLO_NR_P2M ;
 int solo_irq_off (struct solo_dev*,int ) ;

void solo_p2m_exit(struct solo_dev *solo_dev)
{
 int i;

 for (i = 0; i < SOLO_NR_P2M; i++)
  solo_irq_off(solo_dev, SOLO_IRQ_P2M(i));
}
