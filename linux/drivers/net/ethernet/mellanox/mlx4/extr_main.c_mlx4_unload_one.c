
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct mlx4_priv {int removed; int pci_dev_data; int driver_uar; int kar; int * port; } ;
struct mlx4_dev_persistent {struct mlx4_dev* dev; } ;
struct TYPE_4__ {int num_ports; int * possible_type; int * port_type; } ;
struct mlx4_dev {int flags; int dev_vfs; TYPE_2__ caps; TYPE_1__* persist; } ;
struct TYPE_3__ {int * curr_port_poss_type; int * curr_port_type; } ;


 int MLX4_CMD_CLEANUP_ALL ;
 int MLX4_FLAG_MSI_X ;
 int RES_TR_FREE_SLAVES_ONLY ;
 int RES_TR_FREE_STRUCTS_ONLY ;
 int iounmap (int ) ;
 int kfree (int ) ;
 int mlx4_CLOSE_PORT (struct mlx4_dev*,int) ;
 int mlx4_clean_dev (struct mlx4_dev*) ;
 int mlx4_cleanup_counters_table (struct mlx4_dev*) ;
 int mlx4_cleanup_cq_table (struct mlx4_dev*) ;
 int mlx4_cleanup_default_counters (struct mlx4_dev*) ;
 int mlx4_cleanup_eq_table (struct mlx4_dev*) ;
 int mlx4_cleanup_mcg_table (struct mlx4_dev*) ;
 int mlx4_cleanup_mr_table (struct mlx4_dev*) ;
 int mlx4_cleanup_pd_table (struct mlx4_dev*) ;
 int mlx4_cleanup_port_info (int *) ;
 int mlx4_cleanup_qp_table (struct mlx4_dev*) ;
 int mlx4_cleanup_srq_table (struct mlx4_dev*) ;
 int mlx4_cleanup_uar_table (struct mlx4_dev*) ;
 int mlx4_cleanup_xrcd_table (struct mlx4_dev*) ;
 int mlx4_clear_steering (struct mlx4_dev*) ;
 int mlx4_close_fw (struct mlx4_dev*) ;
 int mlx4_close_hca (struct mlx4_dev*) ;
 int mlx4_cmd_cleanup (struct mlx4_dev*,int ) ;
 int mlx4_cmd_use_polling (struct mlx4_dev*) ;
 int mlx4_free_eq_table (struct mlx4_dev*) ;
 int mlx4_free_ownership (struct mlx4_dev*) ;
 int mlx4_free_resource_tracker (struct mlx4_dev*,int ) ;
 scalar_t__ mlx4_is_master (struct mlx4_dev*) ;
 scalar_t__ mlx4_is_slave (struct mlx4_dev*) ;
 int mlx4_multi_func_cleanup (struct mlx4_dev*) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_slave_destroy_special_qp_cap (struct mlx4_dev*) ;
 int mlx4_stop_sense (struct mlx4_dev*) ;
 int mlx4_uar_free (struct mlx4_dev*,int *) ;
 int mlx4_unregister_device (struct mlx4_dev*) ;
 int pci_disable_msix (struct pci_dev*) ;
 struct mlx4_dev_persistent* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void mlx4_unload_one(struct pci_dev *pdev)
{
 struct mlx4_dev_persistent *persist = pci_get_drvdata(pdev);
 struct mlx4_dev *dev = persist->dev;
 struct mlx4_priv *priv = mlx4_priv(dev);
 int pci_dev_data;
 int p, i;

 if (priv->removed)
  return;


 for (i = 0; i < dev->caps.num_ports; i++) {
  dev->persist->curr_port_type[i] = dev->caps.port_type[i + 1];
  dev->persist->curr_port_poss_type[i] = dev->caps.
             possible_type[i + 1];
 }

 pci_dev_data = priv->pci_dev_data;

 mlx4_stop_sense(dev);
 mlx4_unregister_device(dev);

 for (p = 1; p <= dev->caps.num_ports; p++) {
  mlx4_cleanup_port_info(&priv->port[p]);
  mlx4_CLOSE_PORT(dev, p);
 }

 if (mlx4_is_master(dev))
  mlx4_free_resource_tracker(dev,
        RES_TR_FREE_SLAVES_ONLY);

 mlx4_cleanup_default_counters(dev);
 if (!mlx4_is_slave(dev))
  mlx4_cleanup_counters_table(dev);
 mlx4_cleanup_qp_table(dev);
 mlx4_cleanup_srq_table(dev);
 mlx4_cleanup_cq_table(dev);
 mlx4_cmd_use_polling(dev);
 mlx4_cleanup_eq_table(dev);
 mlx4_cleanup_mcg_table(dev);
 mlx4_cleanup_mr_table(dev);
 mlx4_cleanup_xrcd_table(dev);
 mlx4_cleanup_pd_table(dev);

 if (mlx4_is_master(dev))
  mlx4_free_resource_tracker(dev,
        RES_TR_FREE_STRUCTS_ONLY);

 iounmap(priv->kar);
 mlx4_uar_free(dev, &priv->driver_uar);
 mlx4_cleanup_uar_table(dev);
 if (!mlx4_is_slave(dev))
  mlx4_clear_steering(dev);
 mlx4_free_eq_table(dev);
 if (mlx4_is_master(dev))
  mlx4_multi_func_cleanup(dev);
 mlx4_close_hca(dev);
 mlx4_close_fw(dev);
 if (mlx4_is_slave(dev))
  mlx4_multi_func_cleanup(dev);
 mlx4_cmd_cleanup(dev, MLX4_CMD_CLEANUP_ALL);

 if (dev->flags & MLX4_FLAG_MSI_X)
  pci_disable_msix(pdev);

 if (!mlx4_is_slave(dev))
  mlx4_free_ownership(dev);

 mlx4_slave_destroy_special_qp_cap(dev);
 kfree(dev->dev_vfs);

 mlx4_clean_dev(dev);
 priv->pci_dev_data = pci_dev_data;
 priv->removed = 1;
}
