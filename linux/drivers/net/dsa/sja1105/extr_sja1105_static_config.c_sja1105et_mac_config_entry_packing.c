
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_mac_config_entry {int ingress; int egress; int dyn_learn; int retag; int drpuntag; int drpdtag; int drpnona664; int egr_mirr; int ing_mirr; int vlanid; int vlanprio; int maxage; int tp_delout; int tp_delin; int speed; int ifg; int * top; int * base; int * enabled; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 size_t SJA1105ET_SIZE_MAC_CONFIG_ENTRY ;
 int sja1105_packing (void*,int *,int,int,size_t const,int) ;

__attribute__((used)) static size_t sja1105et_mac_config_entry_packing(void *buf, void *entry_ptr,
       enum packing_op op)
{
 const size_t size = SJA1105ET_SIZE_MAC_CONFIG_ENTRY;
 struct sja1105_mac_config_entry *entry = entry_ptr;
 int offset, i;

 for (i = 0, offset = 72; i < 8; i++, offset += 19) {
  sja1105_packing(buf, &entry->enabled[i],
    offset + 0, offset + 0, size, op);
  sja1105_packing(buf, &entry->base[i],
    offset + 9, offset + 1, size, op);
  sja1105_packing(buf, &entry->top[i],
    offset + 18, offset + 10, size, op);
 }
 sja1105_packing(buf, &entry->ifg, 71, 67, size, op);
 sja1105_packing(buf, &entry->speed, 66, 65, size, op);
 sja1105_packing(buf, &entry->tp_delin, 64, 49, size, op);
 sja1105_packing(buf, &entry->tp_delout, 48, 33, size, op);
 sja1105_packing(buf, &entry->maxage, 32, 25, size, op);
 sja1105_packing(buf, &entry->vlanprio, 24, 22, size, op);
 sja1105_packing(buf, &entry->vlanid, 21, 10, size, op);
 sja1105_packing(buf, &entry->ing_mirr, 9, 9, size, op);
 sja1105_packing(buf, &entry->egr_mirr, 8, 8, size, op);
 sja1105_packing(buf, &entry->drpnona664, 7, 7, size, op);
 sja1105_packing(buf, &entry->drpdtag, 6, 6, size, op);
 sja1105_packing(buf, &entry->drpuntag, 5, 5, size, op);
 sja1105_packing(buf, &entry->retag, 4, 4, size, op);
 sja1105_packing(buf, &entry->dyn_learn, 3, 3, size, op);
 sja1105_packing(buf, &entry->egress, 2, 2, size, op);
 sja1105_packing(buf, &entry->ingress, 1, 1, size, op);
 return size;
}
