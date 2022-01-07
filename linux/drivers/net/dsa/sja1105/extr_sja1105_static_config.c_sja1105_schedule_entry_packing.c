
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_schedule_entry {int delta; int vlindex; int resmedia; int resmedia_en; int txen; int setvalid; int destports; int winst; int winend; int winstindex; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 size_t SJA1105_SIZE_SCHEDULE_ENTRY ;
 int sja1105_packing (void*,int *,int,int,size_t const,int) ;

__attribute__((used)) static size_t sja1105_schedule_entry_packing(void *buf, void *entry_ptr,
          enum packing_op op)
{
 const size_t size = SJA1105_SIZE_SCHEDULE_ENTRY;
 struct sja1105_schedule_entry *entry = entry_ptr;

 sja1105_packing(buf, &entry->winstindex, 63, 54, size, op);
 sja1105_packing(buf, &entry->winend, 53, 53, size, op);
 sja1105_packing(buf, &entry->winst, 52, 52, size, op);
 sja1105_packing(buf, &entry->destports, 51, 47, size, op);
 sja1105_packing(buf, &entry->setvalid, 46, 46, size, op);
 sja1105_packing(buf, &entry->txen, 45, 45, size, op);
 sja1105_packing(buf, &entry->resmedia_en, 44, 44, size, op);
 sja1105_packing(buf, &entry->resmedia, 43, 36, size, op);
 sja1105_packing(buf, &entry->vlindex, 35, 26, size, op);
 sja1105_packing(buf, &entry->delta, 25, 8, size, op);
 return size;
}
