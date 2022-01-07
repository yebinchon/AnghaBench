
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 scalar_t__ XGBE_MODE_KR ;
 scalar_t__ xgbe_cur_mode (struct xgbe_prv_data*) ;

__attribute__((used)) static bool xgbe_in_kr_mode(struct xgbe_prv_data *pdata)
{
 return (xgbe_cur_mode(pdata) == XGBE_MODE_KR);
}
