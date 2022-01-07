
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_set {int dummy; } ;
struct nicvf {int dummy; } ;


 int NICVF_SQ_RESET ;
 int NIC_QSET_SQ_0_7_CFG ;
 int NIC_QSET_SQ_0_7_STATUS ;
 scalar_t__ nicvf_poll_reg (struct nicvf*,int,int ,int,int,int) ;
 int nicvf_queue_reg_write (struct nicvf*,int ,int,int ) ;

__attribute__((used)) static void nicvf_reclaim_snd_queue(struct nicvf *nic,
        struct queue_set *qs, int qidx)
{

 nicvf_queue_reg_write(nic, NIC_QSET_SQ_0_7_CFG, qidx, 0);

 if (nicvf_poll_reg(nic, qidx, NIC_QSET_SQ_0_7_STATUS, 21, 1, 0x01))
  return;

 nicvf_queue_reg_write(nic, NIC_QSET_SQ_0_7_CFG, qidx, NICVF_SQ_RESET);
}
