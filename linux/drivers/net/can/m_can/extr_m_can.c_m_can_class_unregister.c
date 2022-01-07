
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_can_classdev {int net; } ;


 int free_candev (int ) ;
 int m_can_clk_stop (struct m_can_classdev*) ;
 int unregister_candev (int ) ;

void m_can_class_unregister(struct m_can_classdev *m_can_dev)
{
 unregister_candev(m_can_dev->net);

 m_can_clk_stop(m_can_dev);

 free_candev(m_can_dev->net);
}
