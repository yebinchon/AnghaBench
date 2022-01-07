
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ico_wqe; } ;
struct mlx5e_icosq {TYPE_1__ db; } ;


 int kvfree (int ) ;

__attribute__((used)) static void mlx5e_free_icosq_db(struct mlx5e_icosq *sq)
{
 kvfree(sq->db.ico_wqe);
}
