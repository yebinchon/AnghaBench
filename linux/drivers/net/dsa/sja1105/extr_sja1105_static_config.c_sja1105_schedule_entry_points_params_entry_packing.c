
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_schedule_entry_points_params_entry {int actsubsch; int clksrc; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 size_t SJA1105_SIZE_SCHEDULE_ENTRY_POINTS_PARAMS_ENTRY ;
 int sja1105_packing (void*,int *,int,int,size_t const,int) ;

__attribute__((used)) static size_t
sja1105_schedule_entry_points_params_entry_packing(void *buf, void *entry_ptr,
         enum packing_op op)
{
 struct sja1105_schedule_entry_points_params_entry *entry = entry_ptr;
 const size_t size = SJA1105_SIZE_SCHEDULE_ENTRY_POINTS_PARAMS_ENTRY;

 sja1105_packing(buf, &entry->clksrc, 31, 30, size, op);
 sja1105_packing(buf, &entry->actsubsch, 29, 27, size, op);
 return size;
}
