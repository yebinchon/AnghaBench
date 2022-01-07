
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;


 scalar_t__ BIT (int ) ;
 int EINVAL ;
 int FM10K_PRV_FLAG_LEN ;

__attribute__((used)) static int fm10k_set_priv_flags(struct net_device *netdev, u32 priv_flags)
{
 if (priv_flags >= BIT(FM10K_PRV_FLAG_LEN))
  return -EINVAL;

 return 0;
}
