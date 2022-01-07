
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_cfg_pad_mii_id {int txc_pd; int txc_bypass; int txc_delay; int txc_stable_ovr; int rxc_pd; int rxc_bypass; int rxc_delay; int rxc_stable_ovr; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 int SJA1105_SIZE_CGU_CMD ;
 int sja1105_packing (void*,int *,int,int,int const,int) ;

__attribute__((used)) static void
sja1105_cfg_pad_mii_id_packing(void *buf, struct sja1105_cfg_pad_mii_id *cmd,
          enum packing_op op)
{
 const int size = SJA1105_SIZE_CGU_CMD;

 sja1105_packing(buf, &cmd->rxc_stable_ovr, 15, 15, size, op);
 sja1105_packing(buf, &cmd->rxc_delay, 14, 10, size, op);
 sja1105_packing(buf, &cmd->rxc_bypass, 9, 9, size, op);
 sja1105_packing(buf, &cmd->rxc_pd, 8, 8, size, op);
 sja1105_packing(buf, &cmd->txc_stable_ovr, 7, 7, size, op);
 sja1105_packing(buf, &cmd->txc_delay, 6, 2, size, op);
 sja1105_packing(buf, &cmd->txc_bypass, 1, 1, size, op);
 sja1105_packing(buf, &cmd->txc_pd, 0, 0, size, op);
}
