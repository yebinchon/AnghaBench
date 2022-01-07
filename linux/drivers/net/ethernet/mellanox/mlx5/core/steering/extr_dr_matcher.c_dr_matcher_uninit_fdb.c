
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_matcher {int tx; int rx; } ;


 int dr_matcher_uninit_nic (int *) ;

__attribute__((used)) static void dr_matcher_uninit_fdb(struct mlx5dr_matcher *matcher)
{
 dr_matcher_uninit_nic(&matcher->rx);
 dr_matcher_uninit_nic(&matcher->tx);
}
