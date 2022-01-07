
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct m_can_classdev {int dummy; } ;


 int CREL_REL_MASK ;
 int CREL_REL_SHIFT ;
 int CREL_STEP_MASK ;
 int CREL_STEP_SHIFT ;
 int M_CAN_CREL ;
 int m_can_read (struct m_can_classdev*,int ) ;

__attribute__((used)) static int m_can_check_core_release(struct m_can_classdev *cdev)
{
 u32 crel_reg;
 u8 rel;
 u8 step;
 int res;




 crel_reg = m_can_read(cdev, M_CAN_CREL);
 rel = (u8)((crel_reg & CREL_REL_MASK) >> CREL_REL_SHIFT);
 step = (u8)((crel_reg & CREL_STEP_MASK) >> CREL_STEP_SHIFT);

 if (rel == 3) {

  res = 30 + step;
 } else {

  res = 0;
 }

 return res;
}
