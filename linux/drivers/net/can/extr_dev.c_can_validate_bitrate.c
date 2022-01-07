
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct can_priv {unsigned int bitrate_const_cnt; } ;
struct can_bittiming {scalar_t__ const bitrate; } ;


 int EINVAL ;
 struct can_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
can_validate_bitrate(struct net_device *dev, struct can_bittiming *bt,
       const u32 *bitrate_const,
       const unsigned int bitrate_const_cnt)
{
 struct can_priv *priv = netdev_priv(dev);
 unsigned int i;

 for (i = 0; i < bitrate_const_cnt; i++) {
  if (bt->bitrate == bitrate_const[i])
   break;
 }

 if (i >= priv->bitrate_const_cnt)
  return -EINVAL;

 return 0;
}
