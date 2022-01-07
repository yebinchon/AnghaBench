
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct mlxsw_sp {TYPE_1__* ptp_ops; } ;
struct mlxsw_core {int dummy; } ;
struct TYPE_2__ {int (* transmitted ) (struct mlxsw_sp*,struct sk_buff*,int ) ;} ;


 int MLXSW_TXHDR_LEN ;
 struct mlxsw_sp* mlxsw_core_driver_priv (struct mlxsw_core*) ;
 int skb_pull (struct sk_buff*,int ) ;
 int stub1 (struct mlxsw_sp*,struct sk_buff*,int ) ;

__attribute__((used)) static void mlxsw_sp_ptp_transmitted(struct mlxsw_core *mlxsw_core,
         struct sk_buff *skb, u8 local_port)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_core_driver_priv(mlxsw_core);

 skb_pull(skb, MLXSW_TXHDR_LEN);
 mlxsw_sp->ptp_ops->transmitted(mlxsw_sp, skb, local_port);
}
