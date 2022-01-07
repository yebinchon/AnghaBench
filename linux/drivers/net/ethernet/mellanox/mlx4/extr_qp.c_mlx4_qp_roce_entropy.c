
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct mlx4_qp_context {int remote_qpn; } ;
struct mlx4_qp {scalar_t__ qpn; } ;
struct mlx4_dev {int dummy; } ;


 int be32_to_cpu (int ) ;
 int folded_qp (scalar_t__) ;
 int mlx4_qp_query (struct mlx4_dev*,struct mlx4_qp*,struct mlx4_qp_context*) ;

u16 mlx4_qp_roce_entropy(struct mlx4_dev *dev, u32 qpn)
{
 struct mlx4_qp_context context;
 struct mlx4_qp qp;
 int err;

 qp.qpn = qpn;
 err = mlx4_qp_query(dev, &qp, &context);
 if (!err) {
  u32 dest_qpn = be32_to_cpu(context.remote_qpn) & 0xffffff;
  u16 folded_dst = folded_qp(dest_qpn);
  u16 folded_src = folded_qp(qpn);

  return (dest_qpn != qpn) ?
   ((folded_dst ^ folded_src) | 0xC000) :
   folded_src | 0xC000;
 }
 return 0xdead;
}
