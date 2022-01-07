
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union mlxsw_sp_l3addr {int addr4; } ;
typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct mlxsw_sp {int core; } ;
typedef enum mlxsw_sp_l3proto { ____Placeholder_mlxsw_sp_l3proto } mlxsw_sp_l3proto ;
typedef enum mlxsw_reg_sfd_uc_tunnel_protocol { ____Placeholder_mlxsw_reg_sfd_uc_tunnel_protocol } mlxsw_reg_sfd_uc_tunnel_protocol ;


 int EBUSY ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_SFD_LEN ;
 int MLXSW_REG_SFD_REC_ACTION_NOP ;
 int MLXSW_REG_SFD_UC_TUNNEL_PROTOCOL_IPV4 ;


 int WARN_ON (int) ;
 int be32_to_cpu (int ) ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 scalar_t__ mlxsw_reg_sfd_num_rec_get (char*) ;
 int mlxsw_reg_sfd_pack (char*,int ,int ) ;
 int mlxsw_reg_sfd_uc_tunnel_pack (char*,int ,int ,char const*,int ,int ,int ,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_sp_sfd_op (int) ;
 int mlxsw_sp_sfd_rec_policy (int) ;
 int sfd ;

__attribute__((used)) static int mlxsw_sp_port_fdb_tunnel_uc_op(struct mlxsw_sp *mlxsw_sp,
       const char *mac, u16 fid,
       enum mlxsw_sp_l3proto proto,
       const union mlxsw_sp_l3addr *addr,
       bool adding, bool dynamic)
{
 enum mlxsw_reg_sfd_uc_tunnel_protocol sfd_proto;
 char *sfd_pl;
 u8 num_rec;
 u32 uip;
 int err;

 switch (proto) {
 case 129:
  uip = be32_to_cpu(addr->addr4);
  sfd_proto = MLXSW_REG_SFD_UC_TUNNEL_PROTOCOL_IPV4;
  break;
 case 128:
 default:
  WARN_ON(1);
  return -EOPNOTSUPP;
 }

 sfd_pl = kmalloc(MLXSW_REG_SFD_LEN, GFP_KERNEL);
 if (!sfd_pl)
  return -ENOMEM;

 mlxsw_reg_sfd_pack(sfd_pl, mlxsw_sp_sfd_op(adding), 0);
 mlxsw_reg_sfd_uc_tunnel_pack(sfd_pl, 0,
         mlxsw_sp_sfd_rec_policy(dynamic), mac, fid,
         MLXSW_REG_SFD_REC_ACTION_NOP, uip,
         sfd_proto);
 num_rec = mlxsw_reg_sfd_num_rec_get(sfd_pl);
 err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(sfd), sfd_pl);
 if (err)
  goto out;

 if (num_rec != mlxsw_reg_sfd_num_rec_get(sfd_pl))
  err = -EBUSY;

out:
 kfree(sfd_pl);
 return err;
}
