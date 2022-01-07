
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;

__attribute__((used)) static inline void mlxsw_sp1_ptp_transmitted(struct mlxsw_sp *mlxsw_sp,
          struct sk_buff *skb, u8 local_port)
{
 dev_kfree_skb_any(skb);
}
