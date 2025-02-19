
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct pci_dev {int dev; int revision; } ;
struct TYPE_7__ {int num_ports; int num_comp_vectors; } ;
struct mlx4_dev {int flags; struct mlx4_dev_cap* dev_vfs; TYPE_5__* persist; TYPE_2__ caps; scalar_t__ num_slaves; int numa_node; int rev_id; } ;
struct TYPE_8__ {int port1; int port2; } ;
struct TYPE_6__ {int pool_lock; int pool_bm; } ;
struct TYPE_9__ {int context_lock; } ;
struct mlx4_priv {struct mlx4_dev dev; int * port; scalar_t__ removed; TYPE_3__ v2p; TYPE_1__ msix_ctl; int opreq_task; int opreq_count; int bf_mutex; int bf_list; TYPE_4__ cmd; int pgdir_mutex; int pgdir_list; int bond_mutex; int port_mutex; int ctx_lock; int ctx_list; } ;
struct mlx4_dev_cap {int flags2; int min_port; int n_ports; } ;
struct TYPE_10__ {int num_vfs; unsigned int* nvfs; int pdev; int state; } ;


 int EACCES ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int MAX_MSIX ;
 int MLX4_CMD_CLEANUP_ALL ;
 int MLX4_CMD_CLEANUP_VHCR ;
 int MLX4_DEVICE_STATE_UP ;
 int MLX4_DEV_CAP_FLAG2_SYS_EQS ;
 int MLX4_FLAG_MASTER ;
 int MLX4_FLAG_MSI_X ;
 int MLX4_FLAG_SLAVE ;
 int MLX4_FLAG_SRIOV ;
 scalar_t__ MLX4_MAX_NUM_SLAVES ;
 int MLX4_PCI_DEV_IS_VF ;
 int RES_TR_FREE_STRUCTS_ONLY ;
 int SRIOV_VALID_STATE (int) ;
 int atomic_dec (int *) ;
 int atomic_set (int *,int ) ;
 int bitmap_zero (int ,int ) ;
 int dev_to_node (int *) ;
 int kfree (struct mlx4_dev_cap*) ;
 struct mlx4_dev_cap* kzalloc (int,int ) ;
 int memcpy (unsigned int*,int*,int) ;
 int memset (struct mlx4_dev_cap*,int ,int) ;
 int mlx4_ARM_COMM_CHANNEL (struct mlx4_dev*) ;
 int mlx4_QUERY_DEV_CAP (struct mlx4_dev*,struct mlx4_dev_cap*) ;
 int mlx4_alloc_eq_table (struct mlx4_dev*) ;
 scalar_t__ mlx4_check_dev_cap (struct mlx4_dev*,struct mlx4_dev_cap*,int*) ;
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
 int mlx4_cmd_init (struct mlx4_dev*) ;
 int mlx4_cmd_use_polling (struct mlx4_dev*) ;
 int mlx4_enable_msi_x (struct mlx4_dev*) ;
 int mlx4_enable_sriov (struct mlx4_dev*,struct pci_dev*,int,int,int) ;
 int mlx4_err (struct mlx4_dev*,char*,...) ;
 int mlx4_free_eq_table (struct mlx4_dev*) ;
 int mlx4_free_ownership (struct mlx4_dev*) ;
 int mlx4_free_resource_tracker (struct mlx4_dev*,int ) ;
 int mlx4_get_ownership (struct mlx4_dev*) ;
 int mlx4_init_fw (struct mlx4_dev*) ;
 int mlx4_init_hca (struct mlx4_dev*) ;
 int mlx4_init_port_info (struct mlx4_dev*,int) ;
 int mlx4_init_quotas (struct mlx4_dev*) ;
 int mlx4_init_steering (struct mlx4_dev*) ;
 scalar_t__ mlx4_is_master (struct mlx4_dev*) ;
 scalar_t__ mlx4_is_mfunc (struct mlx4_dev*) ;
 scalar_t__ mlx4_is_slave (struct mlx4_dev*) ;
 int mlx4_multi_func_cleanup (struct mlx4_dev*) ;
 int mlx4_multi_func_init (struct mlx4_dev*) ;
 int mlx4_opreq_action ;
 int mlx4_register_device (struct mlx4_dev*) ;
 int mlx4_request_modules (struct mlx4_dev*) ;
 int mlx4_reset (struct mlx4_dev*) ;
 int mlx4_sense_init (struct mlx4_dev*) ;
 int mlx4_setup_hca (struct mlx4_dev*) ;
 int mlx4_slave_destroy_special_qp_cap (struct mlx4_dev*) ;
 int mlx4_start_sense (struct mlx4_dev*) ;
 int mlx4_warn (struct mlx4_dev*,char*) ;
 int mutex_init (int *) ;
 int num_vfs_argc ;
 int pci_disable_msix (struct pci_dev*) ;
 int pci_disable_sriov (struct pci_dev*) ;
 int pci_num_vf (struct pci_dev*) ;
 int pcie_print_link_status (int ) ;
 int pf_loading ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int mlx4_load_one(struct pci_dev *pdev, int pci_dev_data,
    int total_vfs, int *nvfs, struct mlx4_priv *priv,
    int reset_flow)
{
 struct mlx4_dev *dev;
 unsigned sum = 0;
 int err;
 int port;
 int i;
 struct mlx4_dev_cap *dev_cap = ((void*)0);
 int existing_vfs = 0;

 dev = &priv->dev;

 INIT_LIST_HEAD(&priv->ctx_list);
 spin_lock_init(&priv->ctx_lock);

 mutex_init(&priv->port_mutex);
 mutex_init(&priv->bond_mutex);

 INIT_LIST_HEAD(&priv->pgdir_list);
 mutex_init(&priv->pgdir_mutex);
 spin_lock_init(&priv->cmd.context_lock);

 INIT_LIST_HEAD(&priv->bf_list);
 mutex_init(&priv->bf_mutex);

 dev->rev_id = pdev->revision;
 dev->numa_node = dev_to_node(&pdev->dev);


 if (pci_dev_data & MLX4_PCI_DEV_IS_VF) {
  mlx4_warn(dev, "Detected virtual function - running in slave mode\n");
  dev->flags |= MLX4_FLAG_SLAVE;
 } else {



  err = mlx4_get_ownership(dev);
  if (err) {
   if (err < 0)
    return err;
   else {
    mlx4_warn(dev, "Multiple PFs not yet supported - Skipping PF\n");
    return -EINVAL;
   }
  }

  atomic_set(&priv->opreq_count, 0);
  INIT_WORK(&priv->opreq_task, mlx4_opreq_action);






  err = mlx4_reset(dev);
  if (err) {
   mlx4_err(dev, "Failed to reset HCA, aborting\n");
   goto err_sriov;
  }

  if (total_vfs) {
   dev->flags = MLX4_FLAG_MASTER;
   existing_vfs = pci_num_vf(pdev);
   if (existing_vfs)
    dev->flags |= MLX4_FLAG_SRIOV;
   dev->persist->num_vfs = total_vfs;
  }
 }




 dev->persist->state = MLX4_DEVICE_STATE_UP;

slave_start:
 err = mlx4_cmd_init(dev);
 if (err) {
  mlx4_err(dev, "Failed to init command interface, aborting\n");
  goto err_sriov;
 }




 if (mlx4_is_mfunc(dev)) {
  if (mlx4_is_master(dev)) {
   dev->num_slaves = MLX4_MAX_NUM_SLAVES;

  } else {
   dev->num_slaves = 0;
   err = mlx4_multi_func_init(dev);
   if (err) {
    mlx4_err(dev, "Failed to init slave mfunc interface, aborting\n");
    goto err_cmd;
   }
  }
 }

 err = mlx4_init_fw(dev);
 if (err) {
  mlx4_err(dev, "Failed to init fw, aborting.\n");
  goto err_mfunc;
 }

 if (mlx4_is_master(dev)) {

  if (!dev_cap) {
   dev_cap = kzalloc(sizeof(*dev_cap), GFP_KERNEL);

   if (!dev_cap) {
    err = -ENOMEM;
    goto err_fw;
   }

   err = mlx4_QUERY_DEV_CAP(dev, dev_cap);
   if (err) {
    mlx4_err(dev, "QUERY_DEV_CAP command failed, aborting.\n");
    goto err_fw;
   }

   if (mlx4_check_dev_cap(dev, dev_cap, nvfs))
    goto err_fw;

   if (!(dev_cap->flags2 & MLX4_DEV_CAP_FLAG2_SYS_EQS)) {
    u64 dev_flags = mlx4_enable_sriov(dev, pdev,
          total_vfs,
          existing_vfs,
          reset_flow);

    mlx4_close_fw(dev);
    mlx4_cmd_cleanup(dev, MLX4_CMD_CLEANUP_ALL);
    dev->flags = dev_flags;
    if (!SRIOV_VALID_STATE(dev->flags)) {
     mlx4_err(dev, "Invalid SRIOV state\n");
     goto err_sriov;
    }
    err = mlx4_reset(dev);
    if (err) {
     mlx4_err(dev, "Failed to reset HCA, aborting.\n");
     goto err_sriov;
    }
    goto slave_start;
   }
  } else {




   memset(dev_cap, 0, sizeof(*dev_cap));
   err = mlx4_QUERY_DEV_CAP(dev, dev_cap);
   if (err) {
    mlx4_err(dev, "QUERY_DEV_CAP command failed, aborting.\n");
    goto err_fw;
   }

   if (mlx4_check_dev_cap(dev, dev_cap, nvfs))
    goto err_fw;
  }
 }

 err = mlx4_init_hca(dev);
 if (err) {
  if (err == -EACCES) {


   mlx4_cmd_cleanup(dev, MLX4_CMD_CLEANUP_ALL);

   if (dev->flags & MLX4_FLAG_SRIOV) {
    if (!existing_vfs)
     pci_disable_sriov(pdev);
    if (mlx4_is_master(dev) && !reset_flow)
     atomic_dec(&pf_loading);
    dev->flags &= ~MLX4_FLAG_SRIOV;
   }
   if (!mlx4_is_slave(dev))
    mlx4_free_ownership(dev);
   dev->flags |= MLX4_FLAG_SLAVE;
   dev->flags &= ~MLX4_FLAG_MASTER;
   goto slave_start;
  } else
   goto err_fw;
 }

 if (mlx4_is_master(dev) && (dev_cap->flags2 & MLX4_DEV_CAP_FLAG2_SYS_EQS)) {
  u64 dev_flags = mlx4_enable_sriov(dev, pdev, total_vfs,
        existing_vfs, reset_flow);

  if ((dev->flags ^ dev_flags) & (MLX4_FLAG_MASTER | MLX4_FLAG_SLAVE)) {
   mlx4_cmd_cleanup(dev, MLX4_CMD_CLEANUP_VHCR);
   dev->flags = dev_flags;
   err = mlx4_cmd_init(dev);
   if (err) {



    mlx4_err(dev, "Failed to init VHCR command interface, aborting\n");
    goto err_close;
   }
  } else {
   dev->flags = dev_flags;
  }

  if (!SRIOV_VALID_STATE(dev->flags)) {
   mlx4_err(dev, "Invalid SRIOV state\n");
   goto err_close;
  }
 }





 if (!mlx4_is_slave(dev))
  pcie_print_link_status(dev->persist->pdev);



 if (mlx4_is_master(dev)) {
  if (dev->caps.num_ports < 2 &&
      num_vfs_argc > 1) {
   err = -EINVAL;
   mlx4_err(dev,
     "Error: Trying to configure VFs on port 2, but HCA has only %d physical ports\n",
     dev->caps.num_ports);
   goto err_close;
  }
  memcpy(dev->persist->nvfs, nvfs, sizeof(dev->persist->nvfs));

  for (i = 0;
       i < sizeof(dev->persist->nvfs)/
       sizeof(dev->persist->nvfs[0]); i++) {
   unsigned j;

   for (j = 0; j < dev->persist->nvfs[i]; ++sum, ++j) {
    dev->dev_vfs[sum].min_port = i < 2 ? i + 1 : 1;
    dev->dev_vfs[sum].n_ports = i < 2 ? 1 :
     dev->caps.num_ports;
   }
  }




  err = mlx4_multi_func_init(dev);
  if (err) {
   mlx4_err(dev, "Failed to init master mfunc interface, aborting.\n");
   goto err_close;
  }
 }

 err = mlx4_alloc_eq_table(dev);
 if (err)
  goto err_master_mfunc;

 bitmap_zero(priv->msix_ctl.pool_bm, MAX_MSIX);
 mutex_init(&priv->msix_ctl.pool_lock);

 mlx4_enable_msi_x(dev);
 if ((mlx4_is_mfunc(dev)) &&
     !(dev->flags & MLX4_FLAG_MSI_X)) {
  err = -EOPNOTSUPP;
  mlx4_err(dev, "INTx is not supported in multi-function mode, aborting\n");
  goto err_free_eq;
 }

 if (!mlx4_is_slave(dev)) {
  err = mlx4_init_steering(dev);
  if (err)
   goto err_disable_msix;
 }

 mlx4_init_quotas(dev);

 err = mlx4_setup_hca(dev);
 if (err == -EBUSY && (dev->flags & MLX4_FLAG_MSI_X) &&
     !mlx4_is_mfunc(dev)) {
  dev->flags &= ~MLX4_FLAG_MSI_X;
  dev->caps.num_comp_vectors = 1;
  pci_disable_msix(pdev);
  err = mlx4_setup_hca(dev);
 }

 if (err)
  goto err_steer;




 if (mlx4_is_master(dev)) {
  err = mlx4_ARM_COMM_CHANNEL(dev);
  if (err) {
   mlx4_err(dev, " Failed to arm comm channel eq: %x\n",
     err);
   goto err_steer;
  }
 }

 for (port = 1; port <= dev->caps.num_ports; port++) {
  err = mlx4_init_port_info(dev, port);
  if (err)
   goto err_port;
 }

 priv->v2p.port1 = 1;
 priv->v2p.port2 = 2;

 err = mlx4_register_device(dev);
 if (err)
  goto err_port;

 mlx4_request_modules(dev);

 mlx4_sense_init(dev);
 mlx4_start_sense(dev);

 priv->removed = 0;

 if (mlx4_is_master(dev) && dev->persist->num_vfs && !reset_flow)
  atomic_dec(&pf_loading);

 kfree(dev_cap);
 return 0;

err_port:
 for (--port; port >= 1; --port)
  mlx4_cleanup_port_info(&priv->port[port]);

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
 mlx4_cleanup_uar_table(dev);

err_steer:
 if (!mlx4_is_slave(dev))
  mlx4_clear_steering(dev);

err_disable_msix:
 if (dev->flags & MLX4_FLAG_MSI_X)
  pci_disable_msix(pdev);

err_free_eq:
 mlx4_free_eq_table(dev);

err_master_mfunc:
 if (mlx4_is_master(dev)) {
  mlx4_free_resource_tracker(dev, RES_TR_FREE_STRUCTS_ONLY);
  mlx4_multi_func_cleanup(dev);
 }

 if (mlx4_is_slave(dev))
  mlx4_slave_destroy_special_qp_cap(dev);

err_close:
 mlx4_close_hca(dev);

err_fw:
 mlx4_close_fw(dev);

err_mfunc:
 if (mlx4_is_slave(dev))
  mlx4_multi_func_cleanup(dev);

err_cmd:
 mlx4_cmd_cleanup(dev, MLX4_CMD_CLEANUP_ALL);

err_sriov:
 if (dev->flags & MLX4_FLAG_SRIOV && !existing_vfs) {
  pci_disable_sriov(pdev);
  dev->flags &= ~MLX4_FLAG_SRIOV;
 }

 if (mlx4_is_master(dev) && dev->persist->num_vfs && !reset_flow)
  atomic_dec(&pf_loading);

 kfree(priv->dev.dev_vfs);

 if (!mlx4_is_slave(dev))
  mlx4_free_ownership(dev);

 kfree(dev_cap);
 return err;
}
