
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int netdev; struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int port_id; } ;


 int ACTIVE ;
 int ETIMEDOUT ;
 int HZ ;
 int ID ;
 unsigned int XGBE_MUTEX_RELEASE ;
 int XP_I2C_MUTEX ;
 scalar_t__ XP_IOREAD (struct xgbe_prv_data*,int ) ;
 int XP_IOWRITE (struct xgbe_prv_data*,int ,unsigned int) ;
 int XP_MDIO_MUTEX ;
 int XP_SET_BITS (unsigned int,int ,int ,int) ;
 int jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_err (int ,char*) ;
 scalar_t__ time_before (int,unsigned long) ;
 int usleep_range (int,int) ;
 int xgbe_phy_comm_lock ;

__attribute__((used)) static int xgbe_phy_get_comm_ownership(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;
 unsigned long timeout;
 unsigned int mutex_id;





 mutex_lock(&xgbe_phy_comm_lock);


 XP_IOWRITE(pdata, XP_I2C_MUTEX, XGBE_MUTEX_RELEASE);
 XP_IOWRITE(pdata, XP_MDIO_MUTEX, XGBE_MUTEX_RELEASE);


 mutex_id = 0;
 XP_SET_BITS(mutex_id, XP_I2C_MUTEX, ID, phy_data->port_id);
 XP_SET_BITS(mutex_id, XP_I2C_MUTEX, ACTIVE, 1);

 timeout = jiffies + (5 * HZ);
 while (time_before(jiffies, timeout)) {

  if (XP_IOREAD(pdata, XP_I2C_MUTEX) ||
      XP_IOREAD(pdata, XP_MDIO_MUTEX)) {
   usleep_range(100, 200);
   continue;
  }


  XP_IOWRITE(pdata, XP_I2C_MUTEX, mutex_id);
  XP_IOWRITE(pdata, XP_MDIO_MUTEX, mutex_id);

  return 0;
 }

 mutex_unlock(&xgbe_phy_comm_lock);

 netdev_err(pdata->netdev, "unable to obtain hardware mutexes\n");

 return -ETIMEDOUT;
}
