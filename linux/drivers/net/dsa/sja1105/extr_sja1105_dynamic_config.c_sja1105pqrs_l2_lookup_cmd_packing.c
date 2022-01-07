
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u8 ;
typedef int u64 ;
struct sja1105_dyn_cmd {int index; int valident; scalar_t__ search; int rdwrset; int errors; int valid; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 int SJA1105PQRS_SIZE_L2_LOOKUP_ENTRY ;
 int SJA1105_HOSTCMD_INVALIDATE ;
 int SJA1105_HOSTCMD_READ ;
 int SJA1105_HOSTCMD_SEARCH ;
 int SJA1105_HOSTCMD_WRITE ;
 int SJA1105_SIZE_DYN_CMD ;
 int SPI_READ ;
 int sja1105_packing (void*,int *,int,int,int const,int) ;

__attribute__((used)) static void
sja1105pqrs_l2_lookup_cmd_packing(void *buf, struct sja1105_dyn_cmd *cmd,
      enum packing_op op)
{
 u8 *p = buf + SJA1105PQRS_SIZE_L2_LOOKUP_ENTRY;
 const int size = SJA1105_SIZE_DYN_CMD;
 u64 hostcmd;

 sja1105_packing(p, &cmd->valid, 31, 31, size, op);
 sja1105_packing(p, &cmd->rdwrset, 30, 30, size, op);
 sja1105_packing(p, &cmd->errors, 29, 29, size, op);
 sja1105_packing(p, &cmd->valident, 27, 27, size, op);
 if (cmd->rdwrset == SPI_READ) {
  if (cmd->search)
   hostcmd = SJA1105_HOSTCMD_SEARCH;
  else
   hostcmd = SJA1105_HOSTCMD_READ;
 } else {

  if (cmd->valident)
   hostcmd = SJA1105_HOSTCMD_WRITE;
  else
   hostcmd = SJA1105_HOSTCMD_INVALIDATE;
 }
 sja1105_packing(p, &hostcmd, 25, 23, size, op);
 sja1105_packing(buf, &cmd->index, 15, 6,
   SJA1105PQRS_SIZE_L2_LOOKUP_ENTRY, op);
}
