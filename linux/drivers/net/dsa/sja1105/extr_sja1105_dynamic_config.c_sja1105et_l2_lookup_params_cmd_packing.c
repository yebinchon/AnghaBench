
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_dyn_cmd {int valid; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 int SJA1105ET_SIZE_L2_LOOKUP_PARAMS_DYN_CMD ;
 int sja1105_packing (void*,int *,int,int,int ,int) ;

__attribute__((used)) static void
sja1105et_l2_lookup_params_cmd_packing(void *buf, struct sja1105_dyn_cmd *cmd,
           enum packing_op op)
{
 sja1105_packing(buf, &cmd->valid, 31, 31,
   SJA1105ET_SIZE_L2_LOOKUP_PARAMS_DYN_CMD, op);
}
