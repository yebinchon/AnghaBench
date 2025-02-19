
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union mlxsw_sp_l3addr {int dummy; } mlxsw_sp_l3addr ;
typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
typedef enum switchdev_notifier_type { ____Placeholder_switchdev_notifier_type } switchdev_notifier_type ;
typedef enum mlxsw_sp_l3proto { ____Placeholder_mlxsw_sp_l3proto } mlxsw_sp_l3proto ;
typedef enum mlxsw_reg_sfn_uc_tunnel_protocol { ____Placeholder_mlxsw_reg_sfn_uc_tunnel_protocol } mlxsw_reg_sfn_uc_tunnel_protocol ;
typedef int __be32 ;


 int ETH_ALEN ;
 int SWITCHDEV_FDB_ADD_TO_BRIDGE ;
 int SWITCHDEV_FDB_DEL_TO_BRIDGE ;
 int __mlxsw_sp_fdb_notify_mac_uc_tunnel_process (struct mlxsw_sp*,struct mlxsw_sp_fid*,int,struct net_device**,int *,int *) ;
 int mlxsw_reg_sfn_uc_tunnel_unpack (char*,int,char*,int *,int *,int*) ;
 int mlxsw_sp_fdb_call_notifiers (int,char*,int ,struct net_device*,int) ;
 int mlxsw_sp_fdb_nve_call_notifiers (struct net_device*,char*,int,union mlxsw_sp_l3addr*,int ,int) ;
 struct mlxsw_sp_fid* mlxsw_sp_fid_lookup_by_index (struct mlxsw_sp*,int ) ;
 int mlxsw_sp_fid_put (struct mlxsw_sp_fid*) ;
 int mlxsw_sp_nve_learned_ip_resolve (struct mlxsw_sp*,int ,int,union mlxsw_sp_l3addr*) ;
 int mlxsw_sp_port_fdb_tunnel_uc_op (struct mlxsw_sp*,char*,int ,int,union mlxsw_sp_l3addr*,int,int) ;

__attribute__((used)) static void mlxsw_sp_fdb_notify_mac_uc_tunnel_process(struct mlxsw_sp *mlxsw_sp,
            char *sfn_pl,
            int rec_index,
            bool adding)
{
 enum mlxsw_reg_sfn_uc_tunnel_protocol sfn_proto;
 enum switchdev_notifier_type type;
 struct net_device *nve_dev;
 union mlxsw_sp_l3addr addr;
 struct mlxsw_sp_fid *fid;
 char mac[ETH_ALEN];
 u16 fid_index, vid;
 __be32 vni;
 u32 uip;
 int err;

 mlxsw_reg_sfn_uc_tunnel_unpack(sfn_pl, rec_index, mac, &fid_index,
           &uip, &sfn_proto);

 fid = mlxsw_sp_fid_lookup_by_index(mlxsw_sp, fid_index);
 if (!fid)
  goto err_fid_lookup;

 err = mlxsw_sp_nve_learned_ip_resolve(mlxsw_sp, uip,
           (enum mlxsw_sp_l3proto) sfn_proto,
           &addr);
 if (err)
  goto err_ip_resolve;

 err = __mlxsw_sp_fdb_notify_mac_uc_tunnel_process(mlxsw_sp, fid, adding,
         &nve_dev, &vid, &vni);
 if (err)
  goto err_fdb_process;

 err = mlxsw_sp_port_fdb_tunnel_uc_op(mlxsw_sp, mac, fid_index,
          (enum mlxsw_sp_l3proto) sfn_proto,
          &addr, adding, 1);
 if (err)
  goto err_fdb_op;

 mlxsw_sp_fdb_nve_call_notifiers(nve_dev, mac,
     (enum mlxsw_sp_l3proto) sfn_proto,
     &addr, vni, adding);

 type = adding ? SWITCHDEV_FDB_ADD_TO_BRIDGE :
   SWITCHDEV_FDB_DEL_TO_BRIDGE;
 mlxsw_sp_fdb_call_notifiers(type, mac, vid, nve_dev, adding);

 mlxsw_sp_fid_put(fid);

 return;

err_fdb_op:
err_fdb_process:
err_ip_resolve:
 mlxsw_sp_fid_put(fid);
err_fid_lookup:



 mlxsw_sp_port_fdb_tunnel_uc_op(mlxsw_sp, mac, fid_index,
           (enum mlxsw_sp_l3proto) sfn_proto, &addr,
           0, 1);
}
