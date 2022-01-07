
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENTRY_BITPOS_DESCRIPTOR ;
 int ENTRY_MASK_DESCRIPTOR ;

__attribute__((used)) static inline int get_entry_id(int entry)
{
 return (entry & ENTRY_MASK_DESCRIPTOR) >> ENTRY_BITPOS_DESCRIPTOR;
}
