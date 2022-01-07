
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_mbx_info {int tail; int head; int state; scalar_t__ remote; int local; } ;


 int FM10K_SM_MBX_VERSION ;
 int FM10K_STATE_CONNECT ;
 int fm10k_mbx_reset_work (struct fm10k_mbx_info*) ;

__attribute__((used)) static void fm10k_sm_mbx_connect_reset(struct fm10k_mbx_info *mbx)
{

 fm10k_mbx_reset_work(mbx);


 mbx->local = FM10K_SM_MBX_VERSION;
 mbx->remote = 0;


 mbx->tail = 1;
 mbx->head = 1;


 mbx->state = FM10K_STATE_CONNECT;
}
