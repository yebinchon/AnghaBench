
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct slave_list {int dummy; } ;
struct resource_allocator {int* quota; int* guaranteed; int* allocated; int res_free; int* res_port_free; int res_reserved; int * res_port_rsvd; int alloc_lock; } ;
struct mlx4_slaves_pport {int slaves; } ;
struct TYPE_8__ {struct resource_allocator* res_alloc; int lock; int * res_tree; TYPE_1__* slave_list; } ;
struct TYPE_9__ {TYPE_2__ res_tracker; } ;
struct TYPE_10__ {TYPE_3__ master; } ;
struct mlx4_priv {TYPE_4__ mfunc; } ;
struct TYPE_12__ {int max_counters; int num_ports; scalar_t__ reserved_mtts; scalar_t__ num_mtts; scalar_t__ reserved_mrws; scalar_t__ num_mpts; scalar_t__ reserved_srqs; scalar_t__ num_srqs; scalar_t__ reserved_cqs; scalar_t__ num_cqs; scalar_t__ reserved_qps; scalar_t__ num_qps; } ;
struct mlx4_dev {int num_slaves; TYPE_6__ caps; TYPE_5__* persist; } ;
struct mlx4_active_ports {int ports; } ;
struct TYPE_11__ {int num_vfs; } ;
struct TYPE_7__ {int mutex; int * res_list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 void* MLX4_MAX_MAC_NUM ;
 int MLX4_MAX_PORTS ;
 int MLX4_MAX_VLAN_NUM ;
 int MLX4_NUM_OF_RESOURCE_TYPE ;
 int RB_ROOT ;
 int bitmap_weight (int ,int) ;
 int initialize_res_quotas (struct mlx4_dev*,struct resource_allocator*,int const,int,scalar_t__) ;
 void* kcalloc (int,int,int ) ;
 int kfree (int*) ;
 void* kmalloc_array (int,int,int ) ;
 int mlx4_calc_res_counter_guaranteed (struct mlx4_dev*,struct resource_allocator*,int) ;
 int mlx4_dbg (struct mlx4_dev*,char*,int) ;
 struct mlx4_active_ports mlx4_get_active_ports (struct mlx4_dev*,int) ;
 int mlx4_master_func_num (struct mlx4_dev*) ;
 scalar_t__ mlx4_num_reserved_sqps (struct mlx4_dev*) ;
 struct mlx4_slaves_pport mlx4_phys_to_slaves_pport (struct mlx4_dev*,int) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 scalar_t__ test_bit (int,int ) ;

int mlx4_init_resource_tracker(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 int i, j;
 int t;

 priv->mfunc.master.res_tracker.slave_list =
  kcalloc(dev->num_slaves, sizeof(struct slave_list),
   GFP_KERNEL);
 if (!priv->mfunc.master.res_tracker.slave_list)
  return -ENOMEM;

 for (i = 0 ; i < dev->num_slaves; i++) {
  for (t = 0; t < MLX4_NUM_OF_RESOURCE_TYPE; ++t)
   INIT_LIST_HEAD(&priv->mfunc.master.res_tracker.
           slave_list[i].res_list[t]);
  mutex_init(&priv->mfunc.master.res_tracker.slave_list[i].mutex);
 }

 mlx4_dbg(dev, "Started init_resource_tracker: %ld slaves\n",
   dev->num_slaves);
 for (i = 0 ; i < MLX4_NUM_OF_RESOURCE_TYPE; i++)
  priv->mfunc.master.res_tracker.res_tree[i] = RB_ROOT;

 for (i = 0; i < MLX4_NUM_OF_RESOURCE_TYPE; i++) {
  struct resource_allocator *res_alloc =
   &priv->mfunc.master.res_tracker.res_alloc[i];
  res_alloc->quota = kmalloc_array(dev->persist->num_vfs + 1,
       sizeof(int),
       GFP_KERNEL);
  res_alloc->guaranteed = kmalloc_array(dev->persist->num_vfs + 1,
            sizeof(int),
            GFP_KERNEL);
  if (i == 133 || i == 128)
   res_alloc->allocated =
    kcalloc(MLX4_MAX_PORTS *
      (dev->persist->num_vfs + 1),
     sizeof(int), GFP_KERNEL);
  else
   res_alloc->allocated =
    kcalloc(dev->persist->num_vfs + 1,
     sizeof(int), GFP_KERNEL);

  if (i == 135)
   res_alloc->res_free = dev->caps.max_counters - 1;

  if (!res_alloc->quota || !res_alloc->guaranteed ||
      !res_alloc->allocated)
   goto no_mem_err;

  spin_lock_init(&res_alloc->alloc_lock);
  for (t = 0; t < dev->persist->num_vfs + 1; t++) {
   struct mlx4_active_ports actv_ports =
    mlx4_get_active_ports(dev, t);
   switch (i) {
   case 130:
    initialize_res_quotas(dev, res_alloc, 130,
            t, dev->caps.num_qps -
            dev->caps.reserved_qps -
            mlx4_num_reserved_sqps(dev));
    break;
   case 134:
    initialize_res_quotas(dev, res_alloc, 134,
            t, dev->caps.num_cqs -
            dev->caps.reserved_cqs);
    break;
   case 129:
    initialize_res_quotas(dev, res_alloc, 129,
            t, dev->caps.num_srqs -
            dev->caps.reserved_srqs);
    break;
   case 132:
    initialize_res_quotas(dev, res_alloc, 132,
            t, dev->caps.num_mpts -
            dev->caps.reserved_mrws);
    break;
   case 131:
    initialize_res_quotas(dev, res_alloc, 131,
            t, dev->caps.num_mtts -
            dev->caps.reserved_mtts);
    break;
   case 133:
    if (t == mlx4_master_func_num(dev)) {
     int max_vfs_pport = 0;


     for (j = 0; j < dev->caps.num_ports;
          j++) {
      struct mlx4_slaves_pport slaves_pport =
       mlx4_phys_to_slaves_pport(dev, j + 1);
      unsigned current_slaves =
       bitmap_weight(slaves_pport.slaves,
              dev->caps.num_ports) - 1;
      if (max_vfs_pport < current_slaves)
       max_vfs_pport =
        current_slaves;
     }
     res_alloc->quota[t] =
      MLX4_MAX_MAC_NUM -
      2 * max_vfs_pport;
     res_alloc->guaranteed[t] = 2;
     for (j = 0; j < MLX4_MAX_PORTS; j++)
      res_alloc->res_port_free[j] =
       MLX4_MAX_MAC_NUM;
    } else {
     res_alloc->quota[t] = MLX4_MAX_MAC_NUM;
     res_alloc->guaranteed[t] = 2;
    }
    break;
   case 128:
    if (t == mlx4_master_func_num(dev)) {
     res_alloc->quota[t] = MLX4_MAX_VLAN_NUM;
     res_alloc->guaranteed[t] = MLX4_MAX_VLAN_NUM / 2;
     for (j = 0; j < MLX4_MAX_PORTS; j++)
      res_alloc->res_port_free[j] =
       res_alloc->quota[t];
    } else {
     res_alloc->quota[t] = MLX4_MAX_VLAN_NUM / 2;
     res_alloc->guaranteed[t] = 0;
    }
    break;
   case 135:
    res_alloc->quota[t] = dev->caps.max_counters;
    res_alloc->guaranteed[t] =
     mlx4_calc_res_counter_guaranteed(dev, res_alloc, t);
    break;
   default:
    break;
   }
   if (i == 133 || i == 128) {
    for (j = 0; j < dev->caps.num_ports; j++)
     if (test_bit(j, actv_ports.ports))
      res_alloc->res_port_rsvd[j] +=
       res_alloc->guaranteed[t];
   } else {
    res_alloc->res_reserved += res_alloc->guaranteed[t];
   }
  }
 }
 spin_lock_init(&priv->mfunc.master.res_tracker.lock);
 return 0;

no_mem_err:
 for (i = 0; i < MLX4_NUM_OF_RESOURCE_TYPE; i++) {
  kfree(priv->mfunc.master.res_tracker.res_alloc[i].allocated);
  priv->mfunc.master.res_tracker.res_alloc[i].allocated = ((void*)0);
  kfree(priv->mfunc.master.res_tracker.res_alloc[i].guaranteed);
  priv->mfunc.master.res_tracker.res_alloc[i].guaranteed = ((void*)0);
  kfree(priv->mfunc.master.res_tracker.res_alloc[i].quota);
  priv->mfunc.master.res_tracker.res_alloc[i].quota = ((void*)0);
 }
 return -ENOMEM;
}
