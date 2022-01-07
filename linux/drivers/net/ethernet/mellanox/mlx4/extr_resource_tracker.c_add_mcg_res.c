
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct res_qp {int mcg_spl; int mcg_list; } ;
struct res_gid {int prot; int steer; int list; int reg_id; int gid; } ;
struct mlx4_dev {int dummy; } ;
typedef enum mlx4_steer_type { ____Placeholder_mlx4_steer_type } mlx4_steer_type ;
typedef enum mlx4_protocol { ____Placeholder_mlx4_protocol } mlx4_protocol ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ find_gid (struct mlx4_dev*,int,struct res_qp*,int *) ;
 int kfree (struct res_gid*) ;
 struct res_gid* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,int *,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int add_mcg_res(struct mlx4_dev *dev, int slave, struct res_qp *rqp,
         u8 *gid, enum mlx4_protocol prot,
         enum mlx4_steer_type steer, u64 reg_id)
{
 struct res_gid *res;
 int err;

 res = kzalloc(sizeof(*res), GFP_KERNEL);
 if (!res)
  return -ENOMEM;

 spin_lock_irq(&rqp->mcg_spl);
 if (find_gid(dev, slave, rqp, gid)) {
  kfree(res);
  err = -EEXIST;
 } else {
  memcpy(res->gid, gid, 16);
  res->prot = prot;
  res->steer = steer;
  res->reg_id = reg_id;
  list_add_tail(&res->list, &rqp->mcg_list);
  err = 0;
 }
 spin_unlock_irq(&rqp->mcg_spl);

 return err;
}
