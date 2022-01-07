
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_can_classdev {int dummy; } ;


 int ILE_EINT0 ;
 int M_CAN_ILE ;
 int m_can_write (struct m_can_classdev*,int ,int ) ;

__attribute__((used)) static inline void m_can_enable_all_interrupts(struct m_can_classdev *cdev)
{

 m_can_write(cdev, M_CAN_ILE, ILE_EINT0);
}
