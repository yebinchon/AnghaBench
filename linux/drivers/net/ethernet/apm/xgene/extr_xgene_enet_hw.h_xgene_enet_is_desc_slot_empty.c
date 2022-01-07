
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __le64 ;


 int EMPTY_SLOT ;
 size_t EMPTY_SLOT_INDEX ;
 scalar_t__ cpu_to_le64 (int ) ;

__attribute__((used)) static inline bool xgene_enet_is_desc_slot_empty(void *desc_slot_ptr)
{
 __le64 *desc_slot = desc_slot_ptr;

 return (desc_slot[EMPTY_SLOT_INDEX] == cpu_to_le64(EMPTY_SLOT));
}
