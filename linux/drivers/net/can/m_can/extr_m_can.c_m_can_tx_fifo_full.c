
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_can_classdev {int dummy; } ;


 int M_CAN_TXFQS ;
 int TXFQS_TFQF ;
 int m_can_read (struct m_can_classdev*,int ) ;

__attribute__((used)) static inline bool m_can_tx_fifo_full(struct m_can_classdev *cdev)
{
  return !!(m_can_read(cdev, M_CAN_TXFQS) & TXFQS_TFQF);
}
