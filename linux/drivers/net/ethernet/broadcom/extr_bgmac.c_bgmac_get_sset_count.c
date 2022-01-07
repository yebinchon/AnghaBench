
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int BGMAC_STATS_LEN ;
 int EOPNOTSUPP ;


__attribute__((used)) static int bgmac_get_sset_count(struct net_device *dev, int string_set)
{
 switch (string_set) {
 case 128:
  return BGMAC_STATS_LEN;
 }

 return -EOPNOTSUPP;
}
