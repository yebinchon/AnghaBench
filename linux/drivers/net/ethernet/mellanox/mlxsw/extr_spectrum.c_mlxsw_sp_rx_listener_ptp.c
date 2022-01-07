
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct mlxsw_sp {TYPE_1__* ptp_ops; } ;
struct TYPE_2__ {int (* receive ) (struct mlxsw_sp*,struct sk_buff*,int ) ;} ;


 int stub1 (struct mlxsw_sp*,struct sk_buff*,int ) ;

__attribute__((used)) static void mlxsw_sp_rx_listener_ptp(struct sk_buff *skb, u8 local_port,
         void *priv)
{
 struct mlxsw_sp *mlxsw_sp = priv;

 mlxsw_sp->ptp_ops->receive(mlxsw_sp, skb, local_port);
}
