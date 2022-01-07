
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u64 ;
typedef int u16 ;
struct TYPE_2__ {size_t ing_types; size_t egr_types; } ;
struct mlxsw_sp_port {TYPE_1__ ptp; } ;
struct mlxsw_sp1_ptp_key {size_t local_port; size_t domain_number; size_t message_type; int ingress; int sequence_id; } ;
struct mlxsw_sp {struct mlxsw_sp_port** ports; } ;
typedef int key ;


 int memset (struct mlxsw_sp1_ptp_key*,int ,int) ;
 int mlxsw_sp1_ptp_got_piece (struct mlxsw_sp*,struct mlxsw_sp1_ptp_key,int *,int ) ;

void mlxsw_sp1_ptp_got_timestamp(struct mlxsw_sp *mlxsw_sp, bool ingress,
     u8 local_port, u8 message_type,
     u8 domain_number, u16 sequence_id,
     u64 timestamp)
{
 struct mlxsw_sp_port *mlxsw_sp_port;
 struct mlxsw_sp1_ptp_key key;
 u8 types;

 mlxsw_sp_port = mlxsw_sp->ports[local_port];
 if (!mlxsw_sp_port)
  return;

 types = ingress ? mlxsw_sp_port->ptp.ing_types :
     mlxsw_sp_port->ptp.egr_types;




 if (!((1 << message_type) & types))
  return;

 memset(&key, 0, sizeof(key));
 key.local_port = local_port;
 key.domain_number = domain_number;
 key.message_type = message_type;
 key.sequence_id = sequence_id;
 key.ingress = ingress;

 mlxsw_sp1_ptp_got_piece(mlxsw_sp, key, ((void*)0), timestamp);
}
