
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int xgbe_an37_disable (struct xgbe_prv_data*) ;
 int xgbe_an73_disable (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_an_disable_all(struct xgbe_prv_data *pdata)
{
 xgbe_an73_disable(pdata);
 xgbe_an37_disable(pdata);
}
