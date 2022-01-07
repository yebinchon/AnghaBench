
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_avb_params_entry {int srcmeta; int destmeta; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 size_t SJA1105PQRS_SIZE_AVB_PARAMS_ENTRY ;
 int sja1105_packing (void*,int *,int,int,size_t const,int) ;

__attribute__((used)) static size_t sja1105pqrs_avb_params_entry_packing(void *buf, void *entry_ptr,
         enum packing_op op)
{
 const size_t size = SJA1105PQRS_SIZE_AVB_PARAMS_ENTRY;
 struct sja1105_avb_params_entry *entry = entry_ptr;

 sja1105_packing(buf, &entry->destmeta, 125, 78, size, op);
 sja1105_packing(buf, &entry->srcmeta, 77, 30, size, op);
 return size;
}
