
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_l2_forwarding_params_entry {int * part_spc; int max_dynp; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 size_t SJA1105_SIZE_L2_FORWARDING_PARAMS_ENTRY ;
 int sja1105_packing (void*,int *,int,int,size_t const,int) ;

__attribute__((used)) static size_t
sja1105_l2_forwarding_params_entry_packing(void *buf, void *entry_ptr,
        enum packing_op op)
{
 const size_t size = SJA1105_SIZE_L2_FORWARDING_PARAMS_ENTRY;
 struct sja1105_l2_forwarding_params_entry *entry = entry_ptr;
 int offset, i;

 sja1105_packing(buf, &entry->max_dynp, 95, 93, size, op);
 for (i = 0, offset = 13; i < 8; i++, offset += 10)
  sja1105_packing(buf, &entry->part_spc[i],
    offset + 9, offset + 0, size, op);
 return size;
}
