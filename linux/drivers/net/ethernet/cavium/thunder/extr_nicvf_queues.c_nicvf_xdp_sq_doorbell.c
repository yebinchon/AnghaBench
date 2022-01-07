
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_queue {scalar_t__ xdp_desc_cnt; } ;
struct nicvf {int dummy; } ;


 int NIC_QSET_SQ_0_7_DOOR ;
 int nicvf_queue_reg_write (struct nicvf*,int ,int,scalar_t__) ;
 int wmb () ;

void nicvf_xdp_sq_doorbell(struct nicvf *nic,
      struct snd_queue *sq, int sq_num)
{
 if (!sq->xdp_desc_cnt)
  return;


 wmb();


 nicvf_queue_reg_write(nic, NIC_QSET_SQ_0_7_DOOR,
         sq_num, sq->xdp_desc_cnt);
 sq->xdp_desc_cnt = 0;
}
