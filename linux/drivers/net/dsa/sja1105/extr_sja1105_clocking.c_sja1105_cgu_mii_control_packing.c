
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_cgu_mii_ctrl {int pd; int autoblock; int clksrc; } ;
typedef enum packing_op { ____Placeholder_packing_op } packing_op ;


 int sja1105_packing (void*,int *,int,int,int const,int) ;

__attribute__((used)) static void
sja1105_cgu_mii_control_packing(void *buf, struct sja1105_cgu_mii_ctrl *cmd,
    enum packing_op op)
{
 const int size = 4;

 sja1105_packing(buf, &cmd->clksrc, 28, 24, size, op);
 sja1105_packing(buf, &cmd->autoblock, 11, 11, size, op);
 sja1105_packing(buf, &cmd->pd, 0, 0, size, op);
}
