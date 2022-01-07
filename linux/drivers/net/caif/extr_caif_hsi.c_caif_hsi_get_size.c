
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int len; } ;


 int __IFLA_CAIF_HSI_MAX ;
 int __IFLA_CAIF_HSI_UNSPEC ;
 TYPE_1__* caif_hsi_policy ;
 scalar_t__ nla_total_size (int ) ;

__attribute__((used)) static size_t caif_hsi_get_size(const struct net_device *dev)
{
 int i;
 size_t s = 0;
 for (i = __IFLA_CAIF_HSI_UNSPEC + 1; i < __IFLA_CAIF_HSI_MAX; i++)
  s += nla_total_size(caif_hsi_policy[i].len);
 return s;
}
