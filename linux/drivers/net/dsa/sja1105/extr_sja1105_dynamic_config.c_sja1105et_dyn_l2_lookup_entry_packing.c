
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sja1105_l2_lookup_entry {int lockeds; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 int SJA1105ET_SIZE_L2_LOOKUP_ENTRY ;
 int SJA1105_SIZE_DYN_CMD ;
 int sja1105_packing (int *,int *,int,int,int const,int) ;
 size_t sja1105et_l2_lookup_entry_packing (void*,void*,int) ;

__attribute__((used)) static size_t sja1105et_dyn_l2_lookup_entry_packing(void *buf, void *entry_ptr,
          enum packing_op op)
{
 struct sja1105_l2_lookup_entry *entry = entry_ptr;
 u8 *cmd = buf + SJA1105ET_SIZE_L2_LOOKUP_ENTRY;
 const int size = SJA1105_SIZE_DYN_CMD;

 sja1105_packing(cmd, &entry->lockeds, 28, 28, size, op);

 return sja1105et_l2_lookup_entry_packing(buf, entry_ptr, op);
}
