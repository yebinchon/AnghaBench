
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct mlxsw_sp {int dummy; } ;



__attribute__((used)) static inline void
mlxsw_sp1_ptp_got_timestamp(struct mlxsw_sp *mlxsw_sp, bool ingress,
       u8 local_port, u8 message_type,
       u8 domain_number,
       u16 sequence_id, u64 timestamp)
{
}
