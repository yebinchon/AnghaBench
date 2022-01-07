
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct m_can_classdev {int net; } ;


 int CCCR_CCE ;
 int CCCR_CSR ;
 int CCCR_INIT ;
 int M_CAN_CCCR ;
 int m_can_read (struct m_can_classdev*,int ) ;
 int m_can_write (struct m_can_classdev*,int ,int) ;
 int netdev_warn (int ,char*) ;
 int udelay (int) ;

void m_can_config_endisable(struct m_can_classdev *cdev, bool enable)
{
 u32 cccr = m_can_read(cdev, M_CAN_CCCR);
 u32 timeout = 10;
 u32 val = 0;


 if (cccr & CCCR_CSR)
  cccr &= ~CCCR_CSR;

 if (enable) {

  if (cccr & CCCR_CSR)
   cccr &= ~CCCR_CSR;


  m_can_write(cdev, M_CAN_CCCR, cccr | CCCR_INIT);
  udelay(5);

  m_can_write(cdev, M_CAN_CCCR, cccr | CCCR_INIT | CCCR_CCE);
 } else {
  m_can_write(cdev, M_CAN_CCCR, cccr & ~(CCCR_INIT | CCCR_CCE));
 }


 if (enable)
  val = CCCR_INIT | CCCR_CCE;

 while ((m_can_read(cdev, M_CAN_CCCR) & (CCCR_INIT | CCCR_CCE)) != val) {
  if (timeout == 0) {
   netdev_warn(cdev->net, "Failed to init module\n");
   return;
  }
  timeout--;
  udelay(1);
 }
}
