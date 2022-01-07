
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int BFA_DMA_ALIGN_SZ ;
 int BFA_MSGQ_CMDQ_SIZE ;
 int BFA_MSGQ_RSPQ_SIZE ;
 scalar_t__ roundup (int ,int ) ;

u32
bfa_msgq_meminfo(void)
{
 return roundup(BFA_MSGQ_CMDQ_SIZE, BFA_DMA_ALIGN_SZ) +
  roundup(BFA_MSGQ_RSPQ_SIZE, BFA_DMA_ALIGN_SZ);
}
