
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int num_ethernet_queues; scalar_t__ num_queues; scalar_t__ num_cnic_queues; } ;


 int BNX2X_DEV_INFO (char*,scalar_t__) ;
 int bnx2x_disable_msi (struct bnx2x*) ;
 int bnx2x_set_int_mode (struct bnx2x*) ;

__attribute__((used)) static void bnx2x_change_num_queues(struct bnx2x *bp, int num_rss)
{
 bnx2x_disable_msi(bp);
 bp->num_ethernet_queues = num_rss;
 bp->num_queues = bp->num_ethernet_queues + bp->num_cnic_queues;
 BNX2X_DEV_INFO("set number of queues to %d\n", bp->num_queues);
 bnx2x_set_int_mode(bp);
}
