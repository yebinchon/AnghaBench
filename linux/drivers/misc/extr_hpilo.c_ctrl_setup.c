
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccb {void* recv_ctrl; void* send_ctrl; } ;


 void* ctrl_set (int,int,int) ;

__attribute__((used)) static void ctrl_setup(struct ccb *ccb, int nr_desc, int l2desc_sz)
{

 ccb->send_ctrl = ctrl_set(l2desc_sz, nr_desc-1, nr_desc-1);
 ccb->recv_ctrl = ctrl_set(l2desc_sz, nr_desc-1, nr_desc-1);
}
