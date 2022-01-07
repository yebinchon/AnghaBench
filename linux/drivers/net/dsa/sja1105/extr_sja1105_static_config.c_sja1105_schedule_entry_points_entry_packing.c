
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_schedule_entry_points_entry {int address; int delta; int subschindx; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 size_t SJA1105_SIZE_SCHEDULE_ENTRY_POINTS_ENTRY ;
 int sja1105_packing (void*,int *,int,int,size_t const,int) ;

__attribute__((used)) static size_t
sja1105_schedule_entry_points_entry_packing(void *buf, void *entry_ptr,
         enum packing_op op)
{
 struct sja1105_schedule_entry_points_entry *entry = entry_ptr;
 const size_t size = SJA1105_SIZE_SCHEDULE_ENTRY_POINTS_ENTRY;

 sja1105_packing(buf, &entry->subschindx, 31, 29, size, op);
 sja1105_packing(buf, &entry->delta, 28, 11, size, op);
 sja1105_packing(buf, &entry->address, 10, 1, size, op);
 return size;
}
