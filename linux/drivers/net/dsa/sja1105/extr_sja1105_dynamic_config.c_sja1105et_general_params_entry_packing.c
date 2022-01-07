
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_general_params_entry {int mirr_port; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 int SJA1105ET_SIZE_GENERAL_PARAMS_DYN_CMD ;
 int sja1105_packing (void*,int *,int,int ,int const,int) ;

__attribute__((used)) static size_t
sja1105et_general_params_entry_packing(void *buf, void *entry_ptr,
           enum packing_op op)
{
 struct sja1105_general_params_entry *entry = entry_ptr;
 const int size = SJA1105ET_SIZE_GENERAL_PARAMS_DYN_CMD;

 sja1105_packing(buf, &entry->mirr_port, 2, 0, size, op);

 return 0;
}
