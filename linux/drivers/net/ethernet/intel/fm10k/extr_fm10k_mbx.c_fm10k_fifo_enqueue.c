
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct fm10k_mbx_fifo {scalar_t__ size; int tail; } ;
typedef int s32 ;


 int FM10K_MBX_ERR_NO_SPACE ;
 int FM10K_MBX_ERR_SIZE ;
 scalar_t__ FM10K_TLV_DWORD_LEN (int const) ;
 scalar_t__ fm10k_fifo_unused (struct fm10k_mbx_fifo*) ;
 int fm10k_fifo_write_copy (struct fm10k_mbx_fifo*,int const*,int ,scalar_t__) ;
 int wmb () ;

__attribute__((used)) static s32 fm10k_fifo_enqueue(struct fm10k_mbx_fifo *fifo, const u32 *msg)
{
 u16 len = FM10K_TLV_DWORD_LEN(*msg);


 if (len > fifo->size)
  return FM10K_MBX_ERR_SIZE;


 if (len > fm10k_fifo_unused(fifo))
  return FM10K_MBX_ERR_NO_SPACE;


 fm10k_fifo_write_copy(fifo, msg, 0, len);


 wmb();


 fifo->tail += len;

 return 0;
}
