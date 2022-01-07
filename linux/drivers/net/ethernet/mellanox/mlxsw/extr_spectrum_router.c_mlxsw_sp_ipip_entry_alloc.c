
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlxsw_sp_ipip_ops {int ul_proto; } ;
struct mlxsw_sp_ipip_entry {int ipipt; int parms4; struct net_device* ol_dev; int ol_lb; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
typedef enum mlxsw_sp_ipip_type { ____Placeholder_mlxsw_sp_ipip_type } mlxsw_sp_ipip_type ;
struct TYPE_2__ {struct mlxsw_sp_ipip_ops** ipip_ops_arr; } ;


 int ENOMEM ;
 struct mlxsw_sp_ipip_entry* ERR_CAST (int ) ;
 struct mlxsw_sp_ipip_entry* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;


 int WARN_ON (int) ;
 int kfree (struct mlxsw_sp_ipip_entry*) ;
 struct mlxsw_sp_ipip_entry* kzalloc (int,int ) ;
 int mlxsw_sp_ipip_netdev_parms4 (struct net_device*) ;
 int mlxsw_sp_ipip_ol_ipip_lb_create (struct mlxsw_sp*,int,struct net_device*,int *) ;

__attribute__((used)) static struct mlxsw_sp_ipip_entry *
mlxsw_sp_ipip_entry_alloc(struct mlxsw_sp *mlxsw_sp,
     enum mlxsw_sp_ipip_type ipipt,
     struct net_device *ol_dev)
{
 const struct mlxsw_sp_ipip_ops *ipip_ops;
 struct mlxsw_sp_ipip_entry *ipip_entry;
 struct mlxsw_sp_ipip_entry *ret = ((void*)0);

 ipip_ops = mlxsw_sp->router->ipip_ops_arr[ipipt];
 ipip_entry = kzalloc(sizeof(*ipip_entry), GFP_KERNEL);
 if (!ipip_entry)
  return ERR_PTR(-ENOMEM);

 ipip_entry->ol_lb = mlxsw_sp_ipip_ol_ipip_lb_create(mlxsw_sp, ipipt,
           ol_dev, ((void*)0));
 if (IS_ERR(ipip_entry->ol_lb)) {
  ret = ERR_CAST(ipip_entry->ol_lb);
  goto err_ol_ipip_lb_create;
 }

 ipip_entry->ipipt = ipipt;
 ipip_entry->ol_dev = ol_dev;

 switch (ipip_ops->ul_proto) {
 case 129:
  ipip_entry->parms4 = mlxsw_sp_ipip_netdev_parms4(ol_dev);
  break;
 case 128:
  WARN_ON(1);
  break;
 }

 return ipip_entry;

err_ol_ipip_lb_create:
 kfree(ipip_entry);
 return ret;
}
