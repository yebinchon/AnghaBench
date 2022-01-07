
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RxDesc {int PSize; int status; int size; int addr; } ;


 int RingEnd ;
 int cpu_to_le32 (int) ;
 int wmb () ;

__attribute__((used)) static inline void sis190_make_unusable_by_asic(struct RxDesc *desc)
{
 desc->PSize = 0x0;
 desc->addr = cpu_to_le32(0xdeadbeef);
 desc->size &= cpu_to_le32(RingEnd);
 wmb();
 desc->status = 0x0;
}
