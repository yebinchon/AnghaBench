
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_cgu_pll_ctrl {int pd; int bypass; int fbsel; int direct; int psel; int autoblock; int msel; int pllclksrc; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 int sja1105_packing (void*,int *,int,int,int const,int) ;

__attribute__((used)) static void
sja1105_cgu_pll_control_packing(void *buf, struct sja1105_cgu_pll_ctrl *cmd,
    enum packing_op op)
{
 const int size = 4;

 sja1105_packing(buf, &cmd->pllclksrc, 28, 24, size, op);
 sja1105_packing(buf, &cmd->msel, 23, 16, size, op);
 sja1105_packing(buf, &cmd->autoblock, 11, 11, size, op);
 sja1105_packing(buf, &cmd->psel, 9, 8, size, op);
 sja1105_packing(buf, &cmd->direct, 7, 7, size, op);
 sja1105_packing(buf, &cmd->fbsel, 6, 6, size, op);
 sja1105_packing(buf, &cmd->bypass, 1, 1, size, op);
 sja1105_packing(buf, &cmd->pd, 0, 0, size, op);
}
