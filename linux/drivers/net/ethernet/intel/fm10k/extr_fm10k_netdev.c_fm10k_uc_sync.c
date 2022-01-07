
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int __fm10k_uc_sync (struct net_device*,unsigned char const*,int) ;

__attribute__((used)) static int fm10k_uc_sync(struct net_device *dev,
    const unsigned char *addr)
{
 return __fm10k_uc_sync(dev, addr, 1);
}
