
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_geneve {scalar_t__ opt_class; scalar_t__ opt_type; int obj_id; int sync_lock; scalar_t__ refcount; int mdev; } ;
struct geneve_opt {scalar_t__ opt_class; scalar_t__ type; int length; } ;


 int EOPNOTSUPP ;
 scalar_t__ IS_ERR_OR_NULL (struct mlx5_geneve*) ;
 int be16_to_cpu (scalar_t__) ;
 int mlx5_core_warn (int ,char*,int ,scalar_t__,int ,...) ;
 int mlx5_geneve_tlv_option_create (int ,scalar_t__,scalar_t__,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mlx5_geneve_tlv_option_add(struct mlx5_geneve *geneve, struct geneve_opt *opt)
{
 int res = 0;

 if (IS_ERR_OR_NULL(geneve))
  return -EOPNOTSUPP;

 mutex_lock(&geneve->sync_lock);

 if (geneve->refcount) {
  if (geneve->opt_class == opt->opt_class &&
      geneve->opt_type == opt->type) {

   geneve->refcount++;
  } else {




   mlx5_core_warn(geneve->mdev,
           "Won't create Geneve TLV opt object with class:type:len = 0x%x:0x%x:%d (another class:type already exists)\n",
           be16_to_cpu(opt->opt_class),
           opt->type,
           opt->length);
   res = -EOPNOTSUPP;
   goto unlock;
  }
 } else {


  res = mlx5_geneve_tlv_option_create(geneve->mdev,
          opt->opt_class,
          opt->type,
          opt->length);
  if (res < 0) {
   mlx5_core_warn(geneve->mdev,
           "Failed creating Geneve TLV opt object class:type:len = 0x%x:0x%x:%d (err=%d)\n",
           be16_to_cpu(opt->opt_class),
           opt->type, opt->length, res);
   goto unlock;
  }
  geneve->opt_class = opt->opt_class;
  geneve->opt_type = opt->type;
  geneve->obj_id = res;
  geneve->refcount++;
 }

unlock:
 mutex_unlock(&geneve->sync_lock);
 return res;
}
