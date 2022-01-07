
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_dyn_cmd {int errors; int valid; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 int SJA1105ET_SIZE_GENERAL_PARAMS_DYN_CMD ;
 int sja1105_packing (void*,int *,int,int,int const,int) ;

__attribute__((used)) static void
sja1105et_general_params_cmd_packing(void *buf, struct sja1105_dyn_cmd *cmd,
         enum packing_op op)
{
 const int size = SJA1105ET_SIZE_GENERAL_PARAMS_DYN_CMD;

 sja1105_packing(buf, &cmd->valid, 31, 31, size, op);
 sja1105_packing(buf, &cmd->errors, 30, 30, size, op);
}
