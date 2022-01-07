
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp1_ptp_got_packet (struct mlxsw_sp*,struct sk_buff*,int ,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;

void mlxsw_sp1_ptp_receive(struct mlxsw_sp *mlxsw_sp, struct sk_buff *skb,
      u8 local_port)
{
 skb_reset_mac_header(skb);
 mlxsw_sp1_ptp_got_packet(mlxsw_sp, skb, local_port, 1);
}
