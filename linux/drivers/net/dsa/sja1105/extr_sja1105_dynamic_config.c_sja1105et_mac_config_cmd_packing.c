
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sja1105_dyn_cmd {int index; int valid; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 int SJA1105_SIZE_DYN_CMD ;
 int sja1105_packing (int *,int *,int,int,int const,int) ;

__attribute__((used)) static void
sja1105et_mac_config_cmd_packing(void *buf, struct sja1105_dyn_cmd *cmd,
     enum packing_op op)
{
 const int size = SJA1105_SIZE_DYN_CMD;

 u8 *reg1 = buf + 4;

 sja1105_packing(reg1, &cmd->valid, 31, 31, size, op);
 sja1105_packing(reg1, &cmd->index, 26, 24, size, op);
}
