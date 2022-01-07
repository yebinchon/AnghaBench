
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_mbx_info {scalar_t__ state; void* remote; void* local; } ;


 void* FM10K_MBX_CRC_SEED ;
 scalar_t__ FM10K_STATE_CLOSED ;
 scalar_t__ FM10K_STATE_CONNECT ;
 scalar_t__ FM10K_STATE_OPEN ;
 int fm10k_mbx_reset_work (struct fm10k_mbx_info*) ;

__attribute__((used)) static void fm10k_mbx_connect_reset(struct fm10k_mbx_info *mbx)
{

 fm10k_mbx_reset_work(mbx);


 mbx->local = FM10K_MBX_CRC_SEED;
 mbx->remote = FM10K_MBX_CRC_SEED;


 if (mbx->state == FM10K_STATE_OPEN)
  mbx->state = FM10K_STATE_CONNECT;
 else
  mbx->state = FM10K_STATE_CLOSED;
}
