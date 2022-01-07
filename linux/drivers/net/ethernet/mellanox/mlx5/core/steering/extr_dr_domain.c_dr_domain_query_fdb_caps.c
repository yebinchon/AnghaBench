
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int drop_icm_address_tx; int drop_icm_address_rx; int sw_owner; } ;
struct TYPE_4__ {int * vports_caps; scalar_t__ num_esw_ports; scalar_t__ num_vports; TYPE_3__ esw_caps; int esw_tx_drop_address; int esw_rx_drop_address; int fdb_sw_owner; int eswitch_manager; } ;
struct TYPE_5__ {TYPE_1__ caps; } ;
struct mlx5dr_domain {TYPE_2__ info; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int dr_domain_query_vports (struct mlx5dr_domain*) ;
 int * kcalloc (scalar_t__,int,int ) ;
 int kfree (int *) ;
 int mlx5dr_cmd_query_esw_caps (struct mlx5_core_dev*,TYPE_3__*) ;
 int mlx5dr_dbg (struct mlx5dr_domain*,char*) ;

__attribute__((used)) static int dr_domain_query_fdb_caps(struct mlx5_core_dev *mdev,
        struct mlx5dr_domain *dmn)
{
 int ret;

 if (!dmn->info.caps.eswitch_manager)
  return -EOPNOTSUPP;

 ret = mlx5dr_cmd_query_esw_caps(mdev, &dmn->info.caps.esw_caps);
 if (ret)
  return ret;

 dmn->info.caps.fdb_sw_owner = dmn->info.caps.esw_caps.sw_owner;
 dmn->info.caps.esw_rx_drop_address = dmn->info.caps.esw_caps.drop_icm_address_rx;
 dmn->info.caps.esw_tx_drop_address = dmn->info.caps.esw_caps.drop_icm_address_tx;

 dmn->info.caps.vports_caps = kcalloc(dmn->info.caps.num_esw_ports,
          sizeof(dmn->info.caps.vports_caps[0]),
          GFP_KERNEL);
 if (!dmn->info.caps.vports_caps)
  return -ENOMEM;

 ret = dr_domain_query_vports(dmn);
 if (ret) {
  mlx5dr_dbg(dmn, "Failed to query vports caps\n");
  goto free_vports_caps;
 }

 dmn->info.caps.num_vports = dmn->info.caps.num_esw_ports - 1;

 return 0;

free_vports_caps:
 kfree(dmn->info.caps.vports_caps);
 dmn->info.caps.vports_caps = ((void*)0);
 return ret;
}
