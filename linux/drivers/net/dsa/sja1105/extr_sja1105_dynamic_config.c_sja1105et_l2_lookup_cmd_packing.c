
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u8 ;
struct sja1105_dyn_cmd {int index; int valident; int errors; int rdwrset; int valid; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 int SJA1105ET_SIZE_L2_LOOKUP_ENTRY ;
 int SJA1105_SIZE_DYN_CMD ;
 int sja1105_packing (void*,int *,int,int,int const,int) ;

__attribute__((used)) static void
sja1105et_l2_lookup_cmd_packing(void *buf, struct sja1105_dyn_cmd *cmd,
    enum packing_op op)
{
 u8 *p = buf + SJA1105ET_SIZE_L2_LOOKUP_ENTRY;
 const int size = SJA1105_SIZE_DYN_CMD;

 sja1105_packing(p, &cmd->valid, 31, 31, size, op);
 sja1105_packing(p, &cmd->rdwrset, 30, 30, size, op);
 sja1105_packing(p, &cmd->errors, 29, 29, size, op);
 sja1105_packing(p, &cmd->valident, 27, 27, size, op);

 sja1105_packing(buf, &cmd->index, 29, 20,
   SJA1105ET_SIZE_L2_LOOKUP_ENTRY, op);
}
