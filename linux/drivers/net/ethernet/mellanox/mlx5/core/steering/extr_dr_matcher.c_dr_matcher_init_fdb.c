
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_matcher {int rx; int tx; } ;


 int dr_matcher_init_nic (struct mlx5dr_matcher*,int *) ;
 int dr_matcher_uninit_nic (int *) ;

__attribute__((used)) static int dr_matcher_init_fdb(struct mlx5dr_matcher *matcher)
{
 int ret;

 ret = dr_matcher_init_nic(matcher, &matcher->rx);
 if (ret)
  return ret;

 ret = dr_matcher_init_nic(matcher, &matcher->tx);
 if (ret)
  goto uninit_nic_rx;

 return 0;

uninit_nic_rx:
 dr_matcher_uninit_nic(&matcher->rx);
 return ret;
}
