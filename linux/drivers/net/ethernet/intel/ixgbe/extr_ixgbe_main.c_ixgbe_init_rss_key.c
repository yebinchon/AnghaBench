
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_adapter {int * rss_key; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IXGBE_RSS_KEY_SIZE ;
 int * kzalloc (int ,int ) ;
 int netdev_rss_key_fill (int *,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int ixgbe_init_rss_key(struct ixgbe_adapter *adapter)
{
 u32 *rss_key;

 if (!adapter->rss_key) {
  rss_key = kzalloc(IXGBE_RSS_KEY_SIZE, GFP_KERNEL);
  if (unlikely(!rss_key))
   return -ENOMEM;

  netdev_rss_key_fill(rss_key, IXGBE_RSS_KEY_SIZE);
  adapter->rss_key = rss_key;
 }

 return 0;
}
