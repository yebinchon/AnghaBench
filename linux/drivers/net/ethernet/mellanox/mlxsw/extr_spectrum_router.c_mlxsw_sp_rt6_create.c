
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_rt6 {struct fib6_info* rt; } ;
struct fib6_info {int dummy; } ;


 int ENOMEM ;
 struct mlxsw_sp_rt6* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int fib6_info_hold (struct fib6_info*) ;
 struct mlxsw_sp_rt6* kzalloc (int,int ) ;

__attribute__((used)) static struct mlxsw_sp_rt6 *mlxsw_sp_rt6_create(struct fib6_info *rt)
{
 struct mlxsw_sp_rt6 *mlxsw_sp_rt6;

 mlxsw_sp_rt6 = kzalloc(sizeof(*mlxsw_sp_rt6), GFP_KERNEL);
 if (!mlxsw_sp_rt6)
  return ERR_PTR(-ENOMEM);





 mlxsw_sp_rt6->rt = rt;
 fib6_info_hold(rt);

 return mlxsw_sp_rt6;
}
