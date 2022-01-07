
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql3_adapter {int mac_index; int ndev; int flags; int port_link_state; } ;


 int KERN_DEBUG ;
 int LS_UP ;
 int QL_LINK_MASTER ;
 int QL_PHY_GIO_SEM_MASK ;
 int QL_RESOURCE_BITS_BASE_CODE ;
 scalar_t__ SPEED_1000 ;
 int link ;
 int netif_carrier_on (int ) ;
 int netif_info (struct ql3_adapter*,int ,int ,char*,scalar_t__,char*) ;
 int netif_printk (struct ql3_adapter*,int ,int ,int ,char*) ;
 int netif_start_queue (int ) ;
 int ql_auto_neg_error (struct ql3_adapter*) ;
 scalar_t__ ql_get_link_speed (struct ql3_adapter*) ;
 scalar_t__ ql_is_link_full_dup (struct ql3_adapter*) ;
 int ql_is_neg_pause (struct ql3_adapter*) ;
 int ql_mac_cfg_full_dup (struct ql3_adapter*,scalar_t__) ;
 int ql_mac_cfg_gig (struct ql3_adapter*,int) ;
 int ql_mac_cfg_pause (struct ql3_adapter*,int ) ;
 int ql_mac_cfg_soft_reset (struct ql3_adapter*,int) ;
 int ql_mac_enable (struct ql3_adapter*,int) ;
 scalar_t__ ql_port_start (struct ql3_adapter*) ;
 scalar_t__ ql_sem_spinlock (struct ql3_adapter*,int ,int) ;
 int ql_sem_unlock (struct ql3_adapter*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int ql_finish_auto_neg(struct ql3_adapter *qdev)
{

 if (ql_sem_spinlock(qdev, QL_PHY_GIO_SEM_MASK,
  (QL_RESOURCE_BITS_BASE_CODE | (qdev->mac_index) *
    2) << 7))
  return -1;

 if (!ql_auto_neg_error(qdev)) {
  if (test_bit(QL_LINK_MASTER, &qdev->flags)) {

   netif_printk(qdev, link, KERN_DEBUG, qdev->ndev,
         "Configuring link\n");
   ql_mac_cfg_soft_reset(qdev, 1);
   ql_mac_cfg_gig(qdev,
           (ql_get_link_speed
     (qdev) ==
     SPEED_1000));
   ql_mac_cfg_full_dup(qdev,
         ql_is_link_full_dup
         (qdev));
   ql_mac_cfg_pause(qdev,
      ql_is_neg_pause
      (qdev));
   ql_mac_cfg_soft_reset(qdev, 0);


   netif_printk(qdev, link, KERN_DEBUG, qdev->ndev,
         "Enabling mac\n");
   ql_mac_enable(qdev, 1);
  }

  qdev->port_link_state = LS_UP;
  netif_start_queue(qdev->ndev);
  netif_carrier_on(qdev->ndev);
  netif_info(qdev, link, qdev->ndev,
      "Link is up at %d Mbps, %s duplex\n",
      ql_get_link_speed(qdev),
      ql_is_link_full_dup(qdev) ? "full" : "half");

 } else {

  if (test_bit(QL_LINK_MASTER, &qdev->flags)) {
   netif_printk(qdev, link, KERN_DEBUG, qdev->ndev,
         "Remote error detected. Calling ql_port_start()\n");




   ql_sem_unlock(qdev, QL_PHY_GIO_SEM_MASK);
   if (ql_port_start(qdev))
    return -1;
   return 0;
  }
 }
 ql_sem_unlock(qdev, QL_PHY_GIO_SEM_MASK);
 return 0;
}
