
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * allowed_vlan; int acl; } ;
struct mlx5_vport {TYPE_1__ egress; int vport; } ;
struct mlx5_flow_spec {int match_criteria_enable; int match_value; int match_criteria; } ;
struct mlx5_flow_act {int action; int member_0; } ;
struct mlx5_eswitch {int dev; } ;
struct TYPE_4__ {int first_vid; int cvlan_tag; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int MLX5_CAP_GEN (int ,int ) ;
 int MLX5_FLOW_CONTEXT_ACTION_ALLOW ;
 int MLX5_FLOW_CONTEXT_ACTION_VLAN_POP ;
 int MLX5_MATCH_OUTER_HEADERS ;
 int MLX5_SET (int ,int ,int ,int ) ;
 int MLX5_SET_TO_ONES (int ,int ,int ) ;
 int PTR_ERR (int *) ;
 int esw_debug (int ,char*,int ) ;
 int esw_vport_cleanup_egress_rules (struct mlx5_eswitch*,struct mlx5_vport*) ;
 int esw_vport_enable_egress_acl (struct mlx5_eswitch*,struct mlx5_vport*) ;
 int esw_warn (int ,char*,int ,int) ;
 int fte_match_param ;
 int kvfree (struct mlx5_flow_spec*) ;
 struct mlx5_flow_spec* kvzalloc (int,int ) ;
 int * mlx5_add_flow_rules (int ,struct mlx5_flow_spec*,struct mlx5_flow_act*,int *,int ) ;
 int mlx5_core_warn (int ,char*,int,int ) ;
 TYPE_2__ outer_headers ;
 int prio_tag_required ;

__attribute__((used)) static int esw_vport_egress_prio_tag_config(struct mlx5_eswitch *esw,
         struct mlx5_vport *vport)
{
 struct mlx5_flow_act flow_act = {0};
 struct mlx5_flow_spec *spec;
 int err = 0;

 if (!MLX5_CAP_GEN(esw->dev, prio_tag_required))
  return 0;






 esw_vport_cleanup_egress_rules(esw, vport);

 err = esw_vport_enable_egress_acl(esw, vport);
 if (err) {
  mlx5_core_warn(esw->dev,
          "failed to enable egress acl (%d) on vport[%d]\n",
          err, vport->vport);
  return err;
 }

 esw_debug(esw->dev,
    "vport[%d] configure prio tag egress rules\n", vport->vport);

 spec = kvzalloc(sizeof(*spec), GFP_KERNEL);
 if (!spec) {
  err = -ENOMEM;
  goto out_no_mem;
 }


 MLX5_SET_TO_ONES(fte_match_param, spec->match_criteria, outer_headers.cvlan_tag);
 MLX5_SET_TO_ONES(fte_match_param, spec->match_value, outer_headers.cvlan_tag);
 MLX5_SET_TO_ONES(fte_match_param, spec->match_criteria, outer_headers.first_vid);
 MLX5_SET(fte_match_param, spec->match_value, outer_headers.first_vid, 0);

 spec->match_criteria_enable = MLX5_MATCH_OUTER_HEADERS;
 flow_act.action = MLX5_FLOW_CONTEXT_ACTION_VLAN_POP |
     MLX5_FLOW_CONTEXT_ACTION_ALLOW;
 vport->egress.allowed_vlan =
  mlx5_add_flow_rules(vport->egress.acl, spec,
        &flow_act, ((void*)0), 0);
 if (IS_ERR(vport->egress.allowed_vlan)) {
  err = PTR_ERR(vport->egress.allowed_vlan);
  esw_warn(esw->dev,
    "vport[%d] configure egress pop prio tag vlan rule failed, err(%d)\n",
    vport->vport, err);
  vport->egress.allowed_vlan = ((void*)0);
  goto out;
 }

out:
 kvfree(spec);
out_no_mem:
 if (err)
  esw_vport_cleanup_egress_rules(esw, vport);
 return err;
}
