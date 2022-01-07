
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_l2_lookup_entry {int index; int enfport; int destports; int macaddr; int vlanid; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 size_t SJA1105ET_SIZE_L2_LOOKUP_ENTRY ;
 int sja1105_packing (void*,int *,int,int,size_t const,int) ;

size_t sja1105et_l2_lookup_entry_packing(void *buf, void *entry_ptr,
      enum packing_op op)
{
 const size_t size = SJA1105ET_SIZE_L2_LOOKUP_ENTRY;
 struct sja1105_l2_lookup_entry *entry = entry_ptr;

 sja1105_packing(buf, &entry->vlanid, 95, 84, size, op);
 sja1105_packing(buf, &entry->macaddr, 83, 36, size, op);
 sja1105_packing(buf, &entry->destports, 35, 31, size, op);
 sja1105_packing(buf, &entry->enfport, 30, 30, size, op);
 sja1105_packing(buf, &entry->index, 29, 20, size, op);
 return size;
}
