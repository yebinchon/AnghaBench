
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 size_t GRCAN_MSG_SIZE ;
 size_t grcan_ring_sub (size_t,size_t,size_t) ;

__attribute__((used)) static inline u32 grcan_txspace(size_t txsize, u32 txwr, u32 eskbp)
{
 u32 slots = txsize / GRCAN_MSG_SIZE - 1;
 u32 used = grcan_ring_sub(txwr, eskbp, txsize) / GRCAN_MSG_SIZE;

 return slots - used;
}
