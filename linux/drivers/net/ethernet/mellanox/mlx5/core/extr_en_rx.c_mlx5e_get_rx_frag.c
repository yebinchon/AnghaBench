
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_wqe_frag_info {int di; int offset; } ;
struct mlx5e_rq {int dummy; } ;


 int mlx5e_page_alloc (struct mlx5e_rq*,int ) ;

__attribute__((used)) static inline int mlx5e_get_rx_frag(struct mlx5e_rq *rq,
        struct mlx5e_wqe_frag_info *frag)
{
 int err = 0;

 if (!frag->offset)





  err = mlx5e_page_alloc(rq, frag->di);

 return err;
}
