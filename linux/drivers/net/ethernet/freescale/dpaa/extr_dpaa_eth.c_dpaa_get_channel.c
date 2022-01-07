
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ENOMEM ;
 int qman_alloc_pool (int*) ;
 int rx_pool_channel ;
 int rx_pool_channel_init ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int dpaa_get_channel(void)
{
 spin_lock(&rx_pool_channel_init);
 if (!rx_pool_channel) {
  u32 pool;
  int ret;

  ret = qman_alloc_pool(&pool);

  if (!ret)
   rx_pool_channel = pool;
 }
 spin_unlock(&rx_pool_channel_init);
 if (!rx_pool_channel)
  return -ENOMEM;
 return rx_pool_channel;
}
