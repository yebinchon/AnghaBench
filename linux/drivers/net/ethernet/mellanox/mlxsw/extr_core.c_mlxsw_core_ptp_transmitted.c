
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct mlxsw_core {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* ptp_transmitted ) (struct mlxsw_core*,struct sk_buff*,int ) ;} ;


 int stub1 (struct mlxsw_core*,struct sk_buff*,int ) ;

void mlxsw_core_ptp_transmitted(struct mlxsw_core *mlxsw_core,
    struct sk_buff *skb, u8 local_port)
{
 if (mlxsw_core->driver->ptp_transmitted)
  mlxsw_core->driver->ptp_transmitted(mlxsw_core, skb,
          local_port);
}
