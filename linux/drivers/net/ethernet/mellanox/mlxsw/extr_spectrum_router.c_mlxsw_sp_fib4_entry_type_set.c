
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union mlxsw_sp_l3addr {int addr4; } ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct mlxsw_sp_ipip_entry {TYPE_1__* ol_dev; } ;
struct TYPE_5__ {int tunnel_index; } ;
struct mlxsw_sp_fib_entry {void* type; TYPE_2__ decap; } ;
struct mlxsw_sp {int dummy; } ;
struct fib_info {int dummy; } ;
struct fib_entry_notifier_info {int type; struct fib_info* fi; int tb_id; int dst; } ;
struct TYPE_6__ {struct net_device* fib_nh_dev; } ;
struct TYPE_4__ {int flags; } ;


 int EINVAL ;
 int IFF_UP ;
 void* MLXSW_SP_FIB_ENTRY_TYPE_BLACKHOLE ;
 void* MLXSW_SP_FIB_ENTRY_TYPE_IPIP_DECAP ;
 void* MLXSW_SP_FIB_ENTRY_TYPE_LOCAL ;
 void* MLXSW_SP_FIB_ENTRY_TYPE_NVE_DECAP ;
 void* MLXSW_SP_FIB_ENTRY_TYPE_REMOTE ;
 void* MLXSW_SP_FIB_ENTRY_TYPE_TRAP ;
 int MLXSW_SP_L3_PROTO_IPV4 ;






 TYPE_3__* fib_info_nh (struct fib_info*,int ) ;
 int htonl (int ) ;
 int mlxsw_sp_fi_is_gateway (struct mlxsw_sp*,struct fib_info*) ;
 int mlxsw_sp_fib_entry_decap_init (struct mlxsw_sp*,struct mlxsw_sp_fib_entry*,struct mlxsw_sp_ipip_entry*) ;
 int mlxsw_sp_fix_tb_id (int ) ;
 struct mlxsw_sp_ipip_entry* mlxsw_sp_ipip_entry_find_by_decap (struct mlxsw_sp*,struct net_device*,int ,union mlxsw_sp_l3addr) ;
 int mlxsw_sp_nve_decap_tunnel_index_get (struct mlxsw_sp*) ;
 int mlxsw_sp_nve_ipv4_route_is_decap (struct mlxsw_sp*,int ,int ) ;

__attribute__((used)) static int
mlxsw_sp_fib4_entry_type_set(struct mlxsw_sp *mlxsw_sp,
        const struct fib_entry_notifier_info *fen_info,
        struct mlxsw_sp_fib_entry *fib_entry)
{
 struct net_device *dev = fib_info_nh(fen_info->fi, 0)->fib_nh_dev;
 union mlxsw_sp_l3addr dip = { .addr4 = htonl(fen_info->dst) };
 u32 tb_id = mlxsw_sp_fix_tb_id(fen_info->tb_id);
 struct mlxsw_sp_ipip_entry *ipip_entry;
 struct fib_info *fi = fen_info->fi;

 switch (fen_info->type) {
 case 131:
  ipip_entry = mlxsw_sp_ipip_entry_find_by_decap(mlxsw_sp, dev,
       MLXSW_SP_L3_PROTO_IPV4, dip);
  if (ipip_entry && ipip_entry->ol_dev->flags & IFF_UP) {
   fib_entry->type = MLXSW_SP_FIB_ENTRY_TYPE_IPIP_DECAP;
   return mlxsw_sp_fib_entry_decap_init(mlxsw_sp,
            fib_entry,
            ipip_entry);
  }
  if (mlxsw_sp_nve_ipv4_route_is_decap(mlxsw_sp, tb_id,
           dip.addr4)) {
   u32 t_index;

   t_index = mlxsw_sp_nve_decap_tunnel_index_get(mlxsw_sp);
   fib_entry->decap.tunnel_index = t_index;
   fib_entry->type = MLXSW_SP_FIB_ENTRY_TYPE_NVE_DECAP;
   return 0;
  }

 case 132:
  fib_entry->type = MLXSW_SP_FIB_ENTRY_TYPE_TRAP;
  return 0;
 case 133:
  fib_entry->type = MLXSW_SP_FIB_ENTRY_TYPE_BLACKHOLE;
  return 0;
 case 128:
 case 130:




  fib_entry->type = MLXSW_SP_FIB_ENTRY_TYPE_LOCAL;
  return 0;
 case 129:
  if (mlxsw_sp_fi_is_gateway(mlxsw_sp, fi))
   fib_entry->type = MLXSW_SP_FIB_ENTRY_TYPE_REMOTE;
  else
   fib_entry->type = MLXSW_SP_FIB_ENTRY_TYPE_LOCAL;
  return 0;
 default:
  return -EINVAL;
 }
}
