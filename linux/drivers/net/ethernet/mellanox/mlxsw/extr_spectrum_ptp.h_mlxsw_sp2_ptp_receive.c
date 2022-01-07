
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_rx_listener_no_mark_func (struct sk_buff*,int ,struct mlxsw_sp*) ;

__attribute__((used)) static inline void mlxsw_sp2_ptp_receive(struct mlxsw_sp *mlxsw_sp,
      struct sk_buff *skb, u8 local_port)
{
 mlxsw_sp_rx_listener_no_mark_func(skb, local_port, mlxsw_sp);
}
