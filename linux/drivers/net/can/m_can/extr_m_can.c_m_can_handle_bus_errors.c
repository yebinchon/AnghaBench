
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int ctrlmode; } ;
struct m_can_classdev {TYPE_1__ can; } ;


 int CAN_CTRLMODE_BERR_REPORTING ;
 int IR_RF0L ;
 int LEC_UNUSED ;
 scalar_t__ is_lec_err (int) ;
 scalar_t__ m_can_handle_lec_err (struct net_device*,int) ;
 scalar_t__ m_can_handle_lost_msg (struct net_device*) ;
 int m_can_handle_other_err (struct net_device*,int) ;
 struct m_can_classdev* netdev_priv (struct net_device*) ;

__attribute__((used)) static int m_can_handle_bus_errors(struct net_device *dev, u32 irqstatus,
       u32 psr)
{
 struct m_can_classdev *cdev = netdev_priv(dev);
 int work_done = 0;

 if (irqstatus & IR_RF0L)
  work_done += m_can_handle_lost_msg(dev);


 if ((cdev->can.ctrlmode & CAN_CTRLMODE_BERR_REPORTING) &&
     is_lec_err(psr))
  work_done += m_can_handle_lec_err(dev, psr & LEC_UNUSED);


 m_can_handle_other_err(dev, irqstatus);

 return work_done;
}
