
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_l2_lookup_params_entry {int learn_once; int owr_dyn; int use_static; int no_mgmt_learn; int no_enf_hostprt; int shared_learn; int drpnolearn; int start_dynspc; int maxage; int * maxaddrp; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 size_t SJA1105PQRS_SIZE_L2_LOOKUP_PARAMS_ENTRY ;
 int sja1105_packing (void*,int *,int,int,size_t const,int) ;

__attribute__((used)) static size_t
sja1105pqrs_l2_lookup_params_entry_packing(void *buf, void *entry_ptr,
        enum packing_op op)
{
 const size_t size = SJA1105PQRS_SIZE_L2_LOOKUP_PARAMS_ENTRY;
 struct sja1105_l2_lookup_params_entry *entry = entry_ptr;
 int offset, i;

 for (i = 0, offset = 58; i < 5; i++, offset += 11)
  sja1105_packing(buf, &entry->maxaddrp[i],
    offset + 10, offset + 0, size, op);
 sja1105_packing(buf, &entry->maxage, 57, 43, size, op);
 sja1105_packing(buf, &entry->start_dynspc, 42, 33, size, op);
 sja1105_packing(buf, &entry->drpnolearn, 32, 28, size, op);
 sja1105_packing(buf, &entry->shared_learn, 27, 27, size, op);
 sja1105_packing(buf, &entry->no_enf_hostprt, 26, 26, size, op);
 sja1105_packing(buf, &entry->no_mgmt_learn, 25, 25, size, op);
 sja1105_packing(buf, &entry->use_static, 24, 24, size, op);
 sja1105_packing(buf, &entry->owr_dyn, 23, 23, size, op);
 sja1105_packing(buf, &entry->learn_once, 22, 22, size, op);
 return size;
}
