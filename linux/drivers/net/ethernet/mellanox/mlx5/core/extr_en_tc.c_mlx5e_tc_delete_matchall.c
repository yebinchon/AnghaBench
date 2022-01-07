
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct netlink_ext_ack* extack; } ;
struct tc_cls_matchall_offload {TYPE_1__ common; } ;
struct netlink_ext_ack {int dummy; } ;
struct mlx5e_priv {int dummy; } ;


 int apply_police_params (struct mlx5e_priv*,int ,struct netlink_ext_ack*) ;

int mlx5e_tc_delete_matchall(struct mlx5e_priv *priv,
        struct tc_cls_matchall_offload *ma)
{
 struct netlink_ext_ack *extack = ma->common.extack;

 return apply_police_params(priv, 0, extack);
}
