
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_vlan_lookup_entry {int vlanid; int tag_port; int vlan_bc; int vmemb_port; int vegr_mirr; int ving_mirr; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 size_t SJA1105_SIZE_VLAN_LOOKUP_ENTRY ;
 int sja1105_packing (void*,int *,int,int,size_t const,int) ;

size_t sja1105_vlan_lookup_entry_packing(void *buf, void *entry_ptr,
      enum packing_op op)
{
 const size_t size = SJA1105_SIZE_VLAN_LOOKUP_ENTRY;
 struct sja1105_vlan_lookup_entry *entry = entry_ptr;

 sja1105_packing(buf, &entry->ving_mirr, 63, 59, size, op);
 sja1105_packing(buf, &entry->vegr_mirr, 58, 54, size, op);
 sja1105_packing(buf, &entry->vmemb_port, 53, 49, size, op);
 sja1105_packing(buf, &entry->vlan_bc, 48, 44, size, op);
 sja1105_packing(buf, &entry->tag_port, 43, 39, size, op);
 sja1105_packing(buf, &entry->vlanid, 38, 27, size, op);
 return size;
}
