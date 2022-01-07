
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_mgmt_entry {int enfport; int destports; int macaddr; int takets; int tsreg; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 size_t SJA1105PQRS_SIZE_L2_LOOKUP_ENTRY ;
 int sja1105_packing (void*,int *,int,int,size_t const,int) ;

__attribute__((used)) static size_t sja1105pqrs_mgmt_route_entry_packing(void *buf, void *entry_ptr,
         enum packing_op op)
{
 const size_t size = SJA1105PQRS_SIZE_L2_LOOKUP_ENTRY;
 struct sja1105_mgmt_entry *entry = entry_ptr;





 sja1105_packing(buf, &entry->tsreg, 71, 71, size, op);
 sja1105_packing(buf, &entry->takets, 70, 70, size, op);
 sja1105_packing(buf, &entry->macaddr, 69, 22, size, op);
 sja1105_packing(buf, &entry->destports, 21, 17, size, op);
 sja1105_packing(buf, &entry->enfport, 16, 16, size, op);
 return size;
}
