
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int num_ethernet_queues; scalar_t__ num_queues; scalar_t__ num_cnic_queues; } ;


 int BNX2X_DEV_INFO (char*,scalar_t__) ;
 scalar_t__ CNIC_SUPPORT (struct bnx2x*) ;
 scalar_t__ IS_MF_STORAGE_ONLY (struct bnx2x*) ;
 int bnx2x_calc_num_queues (struct bnx2x*) ;

void bnx2x_set_num_queues(struct bnx2x *bp)
{

 bp->num_ethernet_queues = bnx2x_calc_num_queues(bp);


 if (IS_MF_STORAGE_ONLY(bp))
  bp->num_ethernet_queues = 1;


 bp->num_cnic_queues = CNIC_SUPPORT(bp);
 bp->num_queues = bp->num_ethernet_queues + bp->num_cnic_queues;

 BNX2X_DEV_INFO("set number of queues to %d\n", bp->num_queues);
}
