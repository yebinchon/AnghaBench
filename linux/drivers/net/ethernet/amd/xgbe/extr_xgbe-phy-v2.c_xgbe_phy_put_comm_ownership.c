
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int mutex_unlock (int *) ;
 int xgbe_phy_comm_lock ;

__attribute__((used)) static void xgbe_phy_put_comm_ownership(struct xgbe_prv_data *pdata)
{
 mutex_unlock(&xgbe_phy_comm_lock);
}
