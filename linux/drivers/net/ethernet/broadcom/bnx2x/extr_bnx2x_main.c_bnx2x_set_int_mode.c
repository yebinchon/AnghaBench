
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int num_queues; int num_cnic_queues; int num_ethernet_queues; } ;


 int BNX2X_DEV_INFO (char*,...) ;
 int BNX2X_ERR (char*) ;



 int EINVAL ;
 scalar_t__ IS_VF (struct bnx2x*) ;
 int bnx2x_enable_msi (struct bnx2x*) ;
 int bnx2x_enable_msix (struct bnx2x*) ;
 int int_mode ;

int bnx2x_set_int_mode(struct bnx2x *bp)
{
 int rc = 0;

 if (IS_VF(bp) && int_mode != 128) {
  BNX2X_ERR("VF not loaded since interrupt mode not msix\n");
  return -EINVAL;
 }

 switch (int_mode) {
 case 128:

  rc = bnx2x_enable_msix(bp);


  if (!rc)
   return 0;


  if (rc && IS_VF(bp))
   return rc;


  BNX2X_DEV_INFO("Failed to enable multiple MSI-X (%d), set number of queues to %d\n",
          bp->num_queues,
          1 + bp->num_cnic_queues);


 case 129:
  bnx2x_enable_msi(bp);


 case 130:
  bp->num_ethernet_queues = 1;
  bp->num_queues = bp->num_ethernet_queues + bp->num_cnic_queues;
  BNX2X_DEV_INFO("set number of queues to 1\n");
  break;
 default:
  BNX2X_DEV_INFO("unknown value in int_mode module parameter\n");
  return -EINVAL;
 }
 return 0;
}
