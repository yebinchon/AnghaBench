
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_afa_mirror {int span_id; } ;
struct mlxsw_afa_block {int dummy; } ;


 scalar_t__ IS_ERR (struct mlxsw_afa_mirror*) ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int PTR_ERR (struct mlxsw_afa_mirror*) ;
 int mlxsw_afa_block_append_allocated_mirror (struct mlxsw_afa_block*,int ) ;
 struct mlxsw_afa_mirror* mlxsw_afa_mirror_create (struct mlxsw_afa_block*,int ,struct net_device const*,int) ;
 int mlxsw_afa_mirror_destroy (struct mlxsw_afa_block*,struct mlxsw_afa_mirror*) ;

int
mlxsw_afa_block_append_mirror(struct mlxsw_afa_block *block, u8 local_in_port,
         const struct net_device *out_dev, bool ingress,
         struct netlink_ext_ack *extack)
{
 struct mlxsw_afa_mirror *mirror;
 int err;

 mirror = mlxsw_afa_mirror_create(block, local_in_port, out_dev,
      ingress);
 if (IS_ERR(mirror)) {
  NL_SET_ERR_MSG_MOD(extack, "Cannot create mirror action");
  return PTR_ERR(mirror);
 }
 err = mlxsw_afa_block_append_allocated_mirror(block, mirror->span_id);
 if (err) {
  NL_SET_ERR_MSG_MOD(extack, "Cannot append mirror action");
  goto err_append_allocated_mirror;
 }

 return 0;

err_append_allocated_mirror:
 mlxsw_afa_mirror_destroy(block, mirror);
 return err;
}
