
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sja1105_mac_config_entry {int tp_delout; int tp_delin; int vlanid; int vlanprio; int egr_mirr; int ing_mirr; int ingress; int egress; int dyn_learn; int retag; int drpuntag; int drpdtag; int speed; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 int SJA1105ET_SIZE_MAC_CONFIG_DYN_ENTRY ;
 int sja1105_packing (int *,int *,int,int,int const,int) ;

__attribute__((used)) static size_t sja1105et_mac_config_entry_packing(void *buf, void *entry_ptr,
       enum packing_op op)
{
 const int size = SJA1105ET_SIZE_MAC_CONFIG_DYN_ENTRY;
 struct sja1105_mac_config_entry *entry = entry_ptr;

 u8 *reg1 = buf + 4;
 u8 *reg2 = buf;

 sja1105_packing(reg1, &entry->speed, 30, 29, size, op);
 sja1105_packing(reg1, &entry->drpdtag, 23, 23, size, op);
 sja1105_packing(reg1, &entry->drpuntag, 22, 22, size, op);
 sja1105_packing(reg1, &entry->retag, 21, 21, size, op);
 sja1105_packing(reg1, &entry->dyn_learn, 20, 20, size, op);
 sja1105_packing(reg1, &entry->egress, 19, 19, size, op);
 sja1105_packing(reg1, &entry->ingress, 18, 18, size, op);
 sja1105_packing(reg1, &entry->ing_mirr, 17, 17, size, op);
 sja1105_packing(reg1, &entry->egr_mirr, 16, 16, size, op);
 sja1105_packing(reg1, &entry->vlanprio, 14, 12, size, op);
 sja1105_packing(reg1, &entry->vlanid, 11, 0, size, op);
 sja1105_packing(reg2, &entry->tp_delin, 31, 16, size, op);
 sja1105_packing(reg2, &entry->tp_delout, 15, 0, size, op);




 return 0;
}
