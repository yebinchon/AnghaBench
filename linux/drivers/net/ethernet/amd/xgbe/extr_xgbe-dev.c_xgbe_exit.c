
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int __xgbe_exit (struct xgbe_prv_data*) ;

__attribute__((used)) static int xgbe_exit(struct xgbe_prv_data *pdata)
{
 int ret;




 ret = __xgbe_exit(pdata);
 if (ret)
  return ret;

 return __xgbe_exit(pdata);
}
