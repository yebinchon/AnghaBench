
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_func_cap {int phys_port_id; int spec_qps; } ;
struct mlx4_caps {int num_ports; int * pkey_table_len; int * gid_table_len; int * phys_port_id; int * port_type; int * port_mask; int * spec_qps; } ;
struct mlx4_dev {struct mlx4_caps caps; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kcalloc (int,int,int ) ;
 int kfree (struct mlx4_func_cap*) ;
 struct mlx4_func_cap* kzalloc (int,int ) ;
 int mlx4_QUERY_FUNC_CAP (struct mlx4_dev*,int,struct mlx4_func_cap*) ;
 int mlx4_err (struct mlx4_dev*,char*,...) ;
 int mlx4_get_slave_pkey_gid_tbl_len (struct mlx4_dev*,int,int *,int *) ;
 int mlx4_slave_destroy_special_qp_cap (struct mlx4_dev*) ;

__attribute__((used)) static int mlx4_slave_special_qp_cap(struct mlx4_dev *dev)
{
 struct mlx4_func_cap *func_cap = ((void*)0);
 struct mlx4_caps *caps = &dev->caps;
 int i, err = 0;

 func_cap = kzalloc(sizeof(*func_cap), GFP_KERNEL);
 caps->spec_qps = kcalloc(caps->num_ports, sizeof(*caps->spec_qps), GFP_KERNEL);

 if (!func_cap || !caps->spec_qps) {
  mlx4_err(dev, "Failed to allocate memory for special qps cap\n");
  err = -ENOMEM;
  goto err_mem;
 }

 for (i = 1; i <= caps->num_ports; ++i) {
  err = mlx4_QUERY_FUNC_CAP(dev, i, func_cap);
  if (err) {
   mlx4_err(dev, "QUERY_FUNC_CAP port command failed for port %d, aborting (%d)\n",
     i, err);
   goto err_mem;
  }
  caps->spec_qps[i - 1] = func_cap->spec_qps;
  caps->port_mask[i] = caps->port_type[i];
  caps->phys_port_id[i] = func_cap->phys_port_id;
  err = mlx4_get_slave_pkey_gid_tbl_len(dev, i,
            &caps->gid_table_len[i],
            &caps->pkey_table_len[i]);
  if (err) {
   mlx4_err(dev, "QUERY_PORT command failed for port %d, aborting (%d)\n",
     i, err);
   goto err_mem;
  }
 }

err_mem:
 if (err)
  mlx4_slave_destroy_special_qp_cap(dev);
 kfree(func_cap);
 return err;
}
