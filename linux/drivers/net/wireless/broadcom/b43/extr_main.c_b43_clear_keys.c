
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int B43_NR_GROUP_KEYS ;
 int B43_NR_PAIRWISE_KEYS ;
 int b43_key_clear (struct b43_wldev*,int) ;
 scalar_t__ b43_new_kidx_api (struct b43_wldev*) ;

__attribute__((used)) static void b43_clear_keys(struct b43_wldev *dev)
{
 int i, count;

 if (b43_new_kidx_api(dev))
  count = B43_NR_GROUP_KEYS + B43_NR_PAIRWISE_KEYS;
 else
  count = B43_NR_GROUP_KEYS * 2 + B43_NR_PAIRWISE_KEYS;
 for (i = 0; i < count; i++)
  b43_key_clear(dev, i);
}
