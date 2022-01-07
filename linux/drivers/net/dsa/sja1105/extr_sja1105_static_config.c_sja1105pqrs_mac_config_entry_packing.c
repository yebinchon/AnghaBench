
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_mac_config_entry {int ingress; int egress; int dyn_learn; int retag; int drpuntag; int drpdtag; int drpnona664; int egr_mirr; int ing_mirr; int vlanid; int vlanprio; int maxage; int tp_delout; int tp_delin; int speed; int ifg; int * top; int * base; int * enabled; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 size_t SJA1105PQRS_SIZE_MAC_CONFIG_ENTRY ;
 int sja1105_packing (void*,int *,int,int,size_t const,int) ;

size_t sja1105pqrs_mac_config_entry_packing(void *buf, void *entry_ptr,
         enum packing_op op)
{
 const size_t size = SJA1105PQRS_SIZE_MAC_CONFIG_ENTRY;
 struct sja1105_mac_config_entry *entry = entry_ptr;
 int offset, i;

 for (i = 0, offset = 104; i < 8; i++, offset += 19) {
  sja1105_packing(buf, &entry->enabled[i],
    offset + 0, offset + 0, size, op);
  sja1105_packing(buf, &entry->base[i],
    offset + 9, offset + 1, size, op);
  sja1105_packing(buf, &entry->top[i],
    offset + 18, offset + 10, size, op);
 }
 sja1105_packing(buf, &entry->ifg, 103, 99, size, op);
 sja1105_packing(buf, &entry->speed, 98, 97, size, op);
 sja1105_packing(buf, &entry->tp_delin, 96, 81, size, op);
 sja1105_packing(buf, &entry->tp_delout, 80, 65, size, op);
 sja1105_packing(buf, &entry->maxage, 64, 57, size, op);
 sja1105_packing(buf, &entry->vlanprio, 56, 54, size, op);
 sja1105_packing(buf, &entry->vlanid, 53, 42, size, op);
 sja1105_packing(buf, &entry->ing_mirr, 41, 41, size, op);
 sja1105_packing(buf, &entry->egr_mirr, 40, 40, size, op);
 sja1105_packing(buf, &entry->drpnona664, 39, 39, size, op);
 sja1105_packing(buf, &entry->drpdtag, 38, 38, size, op);
 sja1105_packing(buf, &entry->drpuntag, 35, 35, size, op);
 sja1105_packing(buf, &entry->retag, 34, 34, size, op);
 sja1105_packing(buf, &entry->dyn_learn, 33, 33, size, op);
 sja1105_packing(buf, &entry->egress, 32, 32, size, op);
 sja1105_packing(buf, &entry->ingress, 31, 31, size, op);
 return size;
}
