
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RxDesc {int size; } ;


 int RingEnd ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void sis190_mark_as_last_descriptor(struct RxDesc *desc)
{
 desc->size |= cpu_to_le32(RingEnd);
}
