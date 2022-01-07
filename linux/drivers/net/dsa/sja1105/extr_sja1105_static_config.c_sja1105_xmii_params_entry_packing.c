
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_xmii_params_entry {int * phy_mac; int * xmii_mode; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 size_t SJA1105_SIZE_XMII_PARAMS_ENTRY ;
 int sja1105_packing (void*,int *,int,int,size_t const,int) ;

__attribute__((used)) static size_t sja1105_xmii_params_entry_packing(void *buf, void *entry_ptr,
      enum packing_op op)
{
 const size_t size = SJA1105_SIZE_XMII_PARAMS_ENTRY;
 struct sja1105_xmii_params_entry *entry = entry_ptr;
 int offset, i;

 for (i = 0, offset = 17; i < 5; i++, offset += 3) {
  sja1105_packing(buf, &entry->xmii_mode[i],
    offset + 1, offset + 0, size, op);
  sja1105_packing(buf, &entry->phy_mac[i],
    offset + 2, offset + 2, size, op);
 }
 return size;
}
