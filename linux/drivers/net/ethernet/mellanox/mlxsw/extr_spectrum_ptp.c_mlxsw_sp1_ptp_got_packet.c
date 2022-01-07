
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {size_t ing_types; size_t egr_types; } ;
struct mlxsw_sp_port {TYPE_1__ ptp; } ;
struct mlxsw_sp1_ptp_key {size_t local_port; int ingress; int message_type; int sequence_id; int domain_number; } ;
struct mlxsw_sp {struct mlxsw_sp_port** ports; } ;
typedef int key ;


 int memset (struct mlxsw_sp1_ptp_key*,int ,int) ;
 int mlxsw_sp1_ptp_got_piece (struct mlxsw_sp*,struct mlxsw_sp1_ptp_key,struct sk_buff*,int ) ;
 int mlxsw_sp1_ptp_packet_finish (struct mlxsw_sp*,struct sk_buff*,size_t,int,int *) ;
 int mlxsw_sp_ptp_parse (struct sk_buff*,int *,int*,int *) ;

__attribute__((used)) static void mlxsw_sp1_ptp_got_packet(struct mlxsw_sp *mlxsw_sp,
         struct sk_buff *skb, u8 local_port,
         bool ingress)
{
 struct mlxsw_sp_port *mlxsw_sp_port;
 struct mlxsw_sp1_ptp_key key;
 u8 types;
 int err;

 mlxsw_sp_port = mlxsw_sp->ports[local_port];
 if (!mlxsw_sp_port)
  goto immediate;

 types = ingress ? mlxsw_sp_port->ptp.ing_types :
     mlxsw_sp_port->ptp.egr_types;
 if (!types)
  goto immediate;

 memset(&key, 0, sizeof(key));
 key.local_port = local_port;
 key.ingress = ingress;

 err = mlxsw_sp_ptp_parse(skb, &key.domain_number, &key.message_type,
     &key.sequence_id);
 if (err)
  goto immediate;




 if (!((1 << key.message_type) & types))
  goto immediate;

 mlxsw_sp1_ptp_got_piece(mlxsw_sp, key, skb, 0);
 return;

immediate:
 mlxsw_sp1_ptp_packet_finish(mlxsw_sp, skb, local_port, ingress, ((void*)0));
}
