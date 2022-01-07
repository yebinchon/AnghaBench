
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sja1105_dyn_cmd {int index; int rdwrset; int errors; int valid; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 int SJA1105ET_SIZE_MAC_CONFIG_DYN_ENTRY ;
 int SJA1105PQRS_SIZE_MAC_CONFIG_ENTRY ;
 int sja1105_packing (int *,int *,int,int,int const,int) ;

__attribute__((used)) static void
sja1105pqrs_mac_config_cmd_packing(void *buf, struct sja1105_dyn_cmd *cmd,
       enum packing_op op)
{
 const int size = SJA1105ET_SIZE_MAC_CONFIG_DYN_ENTRY;
 u8 *p = buf + SJA1105PQRS_SIZE_MAC_CONFIG_ENTRY;

 sja1105_packing(p, &cmd->valid, 31, 31, size, op);
 sja1105_packing(p, &cmd->errors, 30, 30, size, op);
 sja1105_packing(p, &cmd->rdwrset, 29, 29, size, op);
 sja1105_packing(p, &cmd->index, 2, 0, size, op);
}
