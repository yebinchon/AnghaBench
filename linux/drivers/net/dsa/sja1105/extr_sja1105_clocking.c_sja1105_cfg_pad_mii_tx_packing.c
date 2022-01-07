
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_cfg_pad_mii_tx {int clk_ipud; int clk_ih; int clk_os; int ctrl_ipud; int ctrl_os; int d10_ipud; int d10_os; int d32_ipud; int d32_os; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 int sja1105_packing (void*,int *,int,int,int const,int) ;

__attribute__((used)) static void
sja1105_cfg_pad_mii_tx_packing(void *buf, struct sja1105_cfg_pad_mii_tx *cmd,
          enum packing_op op)
{
 const int size = 4;

 sja1105_packing(buf, &cmd->d32_os, 28, 27, size, op);
 sja1105_packing(buf, &cmd->d32_ipud, 25, 24, size, op);
 sja1105_packing(buf, &cmd->d10_os, 20, 19, size, op);
 sja1105_packing(buf, &cmd->d10_ipud, 17, 16, size, op);
 sja1105_packing(buf, &cmd->ctrl_os, 12, 11, size, op);
 sja1105_packing(buf, &cmd->ctrl_ipud, 9, 8, size, op);
 sja1105_packing(buf, &cmd->clk_os, 4, 3, size, op);
 sja1105_packing(buf, &cmd->clk_ih, 2, 2, size, op);
 sja1105_packing(buf, &cmd->clk_ipud, 1, 0, size, op);
}
