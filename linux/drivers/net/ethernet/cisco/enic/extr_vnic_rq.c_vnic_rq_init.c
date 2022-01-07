
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_rq {int dummy; } ;


 int vnic_rq_init_start (struct vnic_rq*,unsigned int,int ,int ,unsigned int,unsigned int) ;

void vnic_rq_init(struct vnic_rq *rq, unsigned int cq_index,
 unsigned int error_interrupt_enable,
 unsigned int error_interrupt_offset)
{
 vnic_rq_init_start(rq, cq_index, 0, 0, error_interrupt_enable,
      error_interrupt_offset);
}
