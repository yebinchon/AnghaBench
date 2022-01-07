
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int * drop_rule; int acl; int * allow_rule; struct mlx5_fc* drop_counter; } ;
struct TYPE_4__ {int mac; scalar_t__ spoofchk; scalar_t__ qos; scalar_t__ vlan; } ;
struct mlx5_vport {TYPE_2__ ingress; int vport; TYPE_1__ info; } ;
struct mlx5_flow_spec {int match_criteria_enable; int match_value; int match_criteria; } ;
struct mlx5_flow_destination {int counter_id; int type; int member_0; } ;
struct mlx5_flow_act {int action; int member_0; } ;
struct mlx5_fc {int dummy; } ;
struct mlx5_eswitch {int dev; } ;
struct TYPE_6__ {int smac_47_16; int smac_15_0; int cvlan_tag; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int * MLX5_ADDR_OF (int ,int ,int ) ;
 int MLX5_FLOW_CONTEXT_ACTION_ALLOW ;
 int MLX5_FLOW_CONTEXT_ACTION_COUNT ;
 int MLX5_FLOW_CONTEXT_ACTION_DROP ;
 int MLX5_FLOW_DESTINATION_TYPE_COUNTER ;
 int MLX5_MATCH_OUTER_HEADERS ;
 int MLX5_SET_TO_ONES (int ,int ,int ) ;
 int PTR_ERR (int *) ;
 int esw_debug (int ,char*,int ,scalar_t__,scalar_t__) ;
 int esw_vport_cleanup_ingress_rules (struct mlx5_eswitch*,struct mlx5_vport*) ;
 int esw_vport_disable_ingress_acl (struct mlx5_eswitch*,struct mlx5_vport*) ;
 int esw_vport_enable_ingress_acl (struct mlx5_eswitch*,struct mlx5_vport*) ;
 int esw_warn (int ,char*,int ,int) ;
 int ether_addr_copy (int *,int ) ;
 int fte_match_param ;
 int kvfree (struct mlx5_flow_spec*) ;
 struct mlx5_flow_spec* kvzalloc (int,int ) ;
 int memset (struct mlx5_flow_spec*,int ,int) ;
 void* mlx5_add_flow_rules (int ,struct mlx5_flow_spec*,struct mlx5_flow_act*,struct mlx5_flow_destination*,int) ;
 int mlx5_core_warn (int ,char*,int,int ) ;
 int mlx5_fc_id (struct mlx5_fc*) ;
 TYPE_3__ outer_headers ;

__attribute__((used)) static int esw_vport_ingress_config(struct mlx5_eswitch *esw,
        struct mlx5_vport *vport)
{
 struct mlx5_fc *counter = vport->ingress.drop_counter;
 struct mlx5_flow_destination drop_ctr_dst = {0};
 struct mlx5_flow_destination *dst = ((void*)0);
 struct mlx5_flow_act flow_act = {0};
 struct mlx5_flow_spec *spec;
 int dest_num = 0;
 int err = 0;
 u8 *smac_v;

 esw_vport_cleanup_ingress_rules(esw, vport);

 if (!vport->info.vlan && !vport->info.qos && !vport->info.spoofchk) {
  esw_vport_disable_ingress_acl(esw, vport);
  return 0;
 }

 err = esw_vport_enable_ingress_acl(esw, vport);
 if (err) {
  mlx5_core_warn(esw->dev,
          "failed to enable ingress acl (%d) on vport[%d]\n",
          err, vport->vport);
  return err;
 }

 esw_debug(esw->dev,
    "vport[%d] configure ingress rules, vlan(%d) qos(%d)\n",
    vport->vport, vport->info.vlan, vport->info.qos);

 spec = kvzalloc(sizeof(*spec), GFP_KERNEL);
 if (!spec) {
  err = -ENOMEM;
  goto out;
 }

 if (vport->info.vlan || vport->info.qos)
  MLX5_SET_TO_ONES(fte_match_param, spec->match_criteria, outer_headers.cvlan_tag);

 if (vport->info.spoofchk) {
  MLX5_SET_TO_ONES(fte_match_param, spec->match_criteria, outer_headers.smac_47_16);
  MLX5_SET_TO_ONES(fte_match_param, spec->match_criteria, outer_headers.smac_15_0);
  smac_v = MLX5_ADDR_OF(fte_match_param,
          spec->match_value,
          outer_headers.smac_47_16);
  ether_addr_copy(smac_v, vport->info.mac);
 }

 spec->match_criteria_enable = MLX5_MATCH_OUTER_HEADERS;
 flow_act.action = MLX5_FLOW_CONTEXT_ACTION_ALLOW;
 vport->ingress.allow_rule =
  mlx5_add_flow_rules(vport->ingress.acl, spec,
        &flow_act, ((void*)0), 0);
 if (IS_ERR(vport->ingress.allow_rule)) {
  err = PTR_ERR(vport->ingress.allow_rule);
  esw_warn(esw->dev,
    "vport[%d] configure ingress allow rule, err(%d)\n",
    vport->vport, err);
  vport->ingress.allow_rule = ((void*)0);
  goto out;
 }

 memset(spec, 0, sizeof(*spec));
 flow_act.action = MLX5_FLOW_CONTEXT_ACTION_DROP;


 if (counter) {
  flow_act.action |= MLX5_FLOW_CONTEXT_ACTION_COUNT;
  drop_ctr_dst.type = MLX5_FLOW_DESTINATION_TYPE_COUNTER;
  drop_ctr_dst.counter_id = mlx5_fc_id(counter);
  dst = &drop_ctr_dst;
  dest_num++;
 }
 vport->ingress.drop_rule =
  mlx5_add_flow_rules(vport->ingress.acl, spec,
        &flow_act, dst, dest_num);
 if (IS_ERR(vport->ingress.drop_rule)) {
  err = PTR_ERR(vport->ingress.drop_rule);
  esw_warn(esw->dev,
    "vport[%d] configure ingress drop rule, err(%d)\n",
    vport->vport, err);
  vport->ingress.drop_rule = ((void*)0);
  goto out;
 }

out:
 if (err)
  esw_vport_cleanup_ingress_rules(esw, vport);
 kvfree(spec);
 return err;
}
