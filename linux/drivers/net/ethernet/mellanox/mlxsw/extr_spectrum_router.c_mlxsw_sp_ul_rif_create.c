
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_sp_vr {int id; } ;
struct mlxsw_sp_rif {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_2__ {struct mlxsw_sp_rif** rifs; } ;


 int ENOMEM ;
 struct mlxsw_sp_rif* ERR_PTR (int) ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int kfree (struct mlxsw_sp_rif*) ;
 struct mlxsw_sp_rif* mlxsw_sp_rif_alloc (int,size_t,int ,int *) ;
 int mlxsw_sp_rif_index_alloc (struct mlxsw_sp*,size_t*) ;
 int mlxsw_sp_rif_ipip_lb_ul_rif_op (struct mlxsw_sp_rif*,int) ;

__attribute__((used)) static struct mlxsw_sp_rif *
mlxsw_sp_ul_rif_create(struct mlxsw_sp *mlxsw_sp, struct mlxsw_sp_vr *vr,
         struct netlink_ext_ack *extack)
{
 struct mlxsw_sp_rif *ul_rif;
 u16 rif_index;
 int err;

 err = mlxsw_sp_rif_index_alloc(mlxsw_sp, &rif_index);
 if (err) {
  NL_SET_ERR_MSG_MOD(extack, "Exceeded number of supported router interfaces");
  return ERR_PTR(err);
 }

 ul_rif = mlxsw_sp_rif_alloc(sizeof(*ul_rif), rif_index, vr->id, ((void*)0));
 if (!ul_rif)
  return ERR_PTR(-ENOMEM);

 mlxsw_sp->router->rifs[rif_index] = ul_rif;
 ul_rif->mlxsw_sp = mlxsw_sp;
 err = mlxsw_sp_rif_ipip_lb_ul_rif_op(ul_rif, 1);
 if (err)
  goto ul_rif_op_err;

 return ul_rif;

ul_rif_op_err:
 mlxsw_sp->router->rifs[rif_index] = ((void*)0);
 kfree(ul_rif);
 return ERR_PTR(err);
}
