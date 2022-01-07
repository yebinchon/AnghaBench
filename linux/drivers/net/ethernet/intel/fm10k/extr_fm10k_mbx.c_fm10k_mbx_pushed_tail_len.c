
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int * buffer; } ;
struct fm10k_mbx_info {int pushed; TYPE_1__ rx; } ;


 int FM10K_TLV_DWORD_LEN (int ) ;
 int fm10k_fifo_tail_offset (TYPE_1__*,int ) ;

__attribute__((used)) static u16 fm10k_mbx_pushed_tail_len(struct fm10k_mbx_info *mbx)
{
 u32 *tail = mbx->rx.buffer + fm10k_fifo_tail_offset(&mbx->rx, 0);


 if (!mbx->pushed)
  return 0;

 return FM10K_TLV_DWORD_LEN(*tail);
}
