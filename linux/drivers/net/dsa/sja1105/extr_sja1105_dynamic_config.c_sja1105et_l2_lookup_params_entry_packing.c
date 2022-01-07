
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_l2_lookup_params_entry {int poly; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 int SJA1105ET_SIZE_L2_LOOKUP_PARAMS_DYN_CMD ;
 int sja1105_packing (void*,int *,int,int ,int ,int) ;

__attribute__((used)) static size_t
sja1105et_l2_lookup_params_entry_packing(void *buf, void *entry_ptr,
      enum packing_op op)
{
 struct sja1105_l2_lookup_params_entry *entry = entry_ptr;

 sja1105_packing(buf, &entry->poly, 7, 0,
   SJA1105ET_SIZE_L2_LOOKUP_PARAMS_DYN_CMD, op);

 return 0;
}
