
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx5e_cq {int wq; } ;
struct devlink_fmsg {int dummy; } ;


 int BIT (int ) ;
 int devlink_fmsg_u32_pair_put (struct devlink_fmsg*,char*,int ) ;
 int devlink_fmsg_u64_pair_put (struct devlink_fmsg*,char*,int ) ;
 int mlx5_cqwq_get_log_stride_size (int *) ;
 int mlx5_cqwq_get_size (int *) ;
 int mlx5e_reporter_named_obj_nest_end (struct devlink_fmsg*) ;
 int mlx5e_reporter_named_obj_nest_start (struct devlink_fmsg*,char*) ;

int mlx5e_reporter_cq_common_diagnose(struct mlx5e_cq *cq, struct devlink_fmsg *fmsg)
{
 u8 cq_log_stride;
 u32 cq_sz;
 int err;

 cq_sz = mlx5_cqwq_get_size(&cq->wq);
 cq_log_stride = mlx5_cqwq_get_log_stride_size(&cq->wq);

 err = mlx5e_reporter_named_obj_nest_start(fmsg, "CQ");
 if (err)
  return err;

 err = devlink_fmsg_u64_pair_put(fmsg, "stride size", BIT(cq_log_stride));
 if (err)
  return err;

 err = devlink_fmsg_u32_pair_put(fmsg, "size", cq_sz);
 if (err)
  return err;

 err = mlx5e_reporter_named_obj_nest_end(fmsg);
 if (err)
  return err;

 return 0;
}
