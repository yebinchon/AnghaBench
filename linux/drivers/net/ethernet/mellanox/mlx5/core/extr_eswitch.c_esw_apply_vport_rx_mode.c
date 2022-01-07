
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_vport {int * promisc_rule; int vport; int * allmulti_rule; } ;
struct esw_mc_addr {scalar_t__ refcnt; int * uplink_rule; } ;
struct mlx5_eswitch {struct esw_mc_addr mc_promisc; } ;


 int IS_ERR_OR_NULL (int *) ;
 int MLX5_VPORT_UPLINK ;
 void* esw_fdb_set_vport_allmulti_rule (struct mlx5_eswitch*,int ) ;
 int * esw_fdb_set_vport_promisc_rule (struct mlx5_eswitch*,int ) ;
 int mlx5_del_flow_rules (int *) ;

__attribute__((used)) static void esw_apply_vport_rx_mode(struct mlx5_eswitch *esw,
        struct mlx5_vport *vport,
        bool promisc, bool mc_promisc)
{
 struct esw_mc_addr *allmulti_addr = &esw->mc_promisc;

 if (IS_ERR_OR_NULL(vport->allmulti_rule) != mc_promisc)
  goto promisc;

 if (mc_promisc) {
  vport->allmulti_rule =
   esw_fdb_set_vport_allmulti_rule(esw, vport->vport);
  if (!allmulti_addr->uplink_rule)
   allmulti_addr->uplink_rule =
    esw_fdb_set_vport_allmulti_rule(esw,
        MLX5_VPORT_UPLINK);
  allmulti_addr->refcnt++;
 } else if (vport->allmulti_rule) {
  mlx5_del_flow_rules(vport->allmulti_rule);
  vport->allmulti_rule = ((void*)0);

  if (--allmulti_addr->refcnt > 0)
   goto promisc;

  if (allmulti_addr->uplink_rule)
   mlx5_del_flow_rules(allmulti_addr->uplink_rule);
  allmulti_addr->uplink_rule = ((void*)0);
 }

promisc:
 if (IS_ERR_OR_NULL(vport->promisc_rule) != promisc)
  return;

 if (promisc) {
  vport->promisc_rule =
   esw_fdb_set_vport_promisc_rule(esw, vport->vport);
 } else if (vport->promisc_rule) {
  mlx5_del_flow_rules(vport->promisc_rule);
  vport->promisc_rule = ((void*)0);
 }
}
