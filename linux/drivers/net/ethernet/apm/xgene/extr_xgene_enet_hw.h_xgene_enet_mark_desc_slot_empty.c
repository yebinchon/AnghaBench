
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le64 ;


 int EMPTY_SLOT ;
 size_t EMPTY_SLOT_INDEX ;
 int cpu_to_le64 (int ) ;

__attribute__((used)) static inline void xgene_enet_mark_desc_slot_empty(void *desc_slot_ptr)
{
 __le64 *desc_slot = desc_slot_ptr;

 desc_slot[EMPTY_SLOT_INDEX] = cpu_to_le64(EMPTY_SLOT);
}
