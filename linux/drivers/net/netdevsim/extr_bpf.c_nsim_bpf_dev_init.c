
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsim_dev {int bpf_bind_accept; int bpf_bind_verifier_delay; int ddir; int bpf_dev; int ddir_bpf_bound_progs; int bpf_bound_maps; int bpf_bound_progs; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR_OR_NULL (int ) ;
 int PTR_ERR_OR_ZERO (int ) ;
 int bpf_offload_dev_create (int *,struct nsim_dev*) ;
 int debugfs_create_bool (char*,int,int ,int*) ;
 int debugfs_create_dir (char*,int ) ;
 int debugfs_create_u32 (char*,int,int ,int *) ;
 int nsim_bpf_dev_ops ;

int nsim_bpf_dev_init(struct nsim_dev *nsim_dev)
{
 int err;

 INIT_LIST_HEAD(&nsim_dev->bpf_bound_progs);
 INIT_LIST_HEAD(&nsim_dev->bpf_bound_maps);

 nsim_dev->ddir_bpf_bound_progs = debugfs_create_dir("bpf_bound_progs",
           nsim_dev->ddir);
 if (IS_ERR_OR_NULL(nsim_dev->ddir_bpf_bound_progs))
  return -ENOMEM;

 nsim_dev->bpf_dev = bpf_offload_dev_create(&nsim_bpf_dev_ops, nsim_dev);
 err = PTR_ERR_OR_ZERO(nsim_dev->bpf_dev);
 if (err)
  return err;

 nsim_dev->bpf_bind_accept = 1;
 debugfs_create_bool("bpf_bind_accept", 0600, nsim_dev->ddir,
       &nsim_dev->bpf_bind_accept);
 debugfs_create_u32("bpf_bind_verifier_delay", 0600, nsim_dev->ddir,
      &nsim_dev->bpf_bind_verifier_delay);
 return 0;
}
