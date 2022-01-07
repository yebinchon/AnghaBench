
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int rss_mutex; } ;


 int ADDRT ;
 int CT ;
 int EBUSY ;
 int MAC_RSSAR ;
 int MAC_RSSDR ;
 int OB ;
 int RSSIA ;
 scalar_t__ XGMAC_IOREAD_BITS (struct xgbe_prv_data*,int ,int ) ;
 int XGMAC_IOWRITE (struct xgbe_prv_data*,int ,unsigned int) ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int xgbe_write_rss_reg(struct xgbe_prv_data *pdata, unsigned int type,
         unsigned int index, unsigned int val)
{
 unsigned int wait;
 int ret = 0;

 mutex_lock(&pdata->rss_mutex);

 if (XGMAC_IOREAD_BITS(pdata, MAC_RSSAR, OB)) {
  ret = -EBUSY;
  goto unlock;
 }

 XGMAC_IOWRITE(pdata, MAC_RSSDR, val);

 XGMAC_IOWRITE_BITS(pdata, MAC_RSSAR, RSSIA, index);
 XGMAC_IOWRITE_BITS(pdata, MAC_RSSAR, ADDRT, type);
 XGMAC_IOWRITE_BITS(pdata, MAC_RSSAR, CT, 0);
 XGMAC_IOWRITE_BITS(pdata, MAC_RSSAR, OB, 1);

 wait = 1000;
 while (wait--) {
  if (!XGMAC_IOREAD_BITS(pdata, MAC_RSSAR, OB))
   goto unlock;

  usleep_range(1000, 1500);
 }

 ret = -EBUSY;

unlock:
 mutex_unlock(&pdata->rss_mutex);

 return ret;
}
