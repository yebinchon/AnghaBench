
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_l2_policing_entry {int partition; int maxlen; int rate; int smax; int sharindx; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 size_t SJA1105_SIZE_L2_POLICING_ENTRY ;
 int sja1105_packing (void*,int *,int,int,size_t const,int) ;

__attribute__((used)) static size_t sja1105_l2_policing_entry_packing(void *buf, void *entry_ptr,
      enum packing_op op)
{
 const size_t size = SJA1105_SIZE_L2_POLICING_ENTRY;
 struct sja1105_l2_policing_entry *entry = entry_ptr;

 sja1105_packing(buf, &entry->sharindx, 63, 58, size, op);
 sja1105_packing(buf, &entry->smax, 57, 42, size, op);
 sja1105_packing(buf, &entry->rate, 41, 26, size, op);
 sja1105_packing(buf, &entry->maxlen, 25, 15, size, op);
 sja1105_packing(buf, &entry->partition, 14, 12, size, op);
 return size;
}
