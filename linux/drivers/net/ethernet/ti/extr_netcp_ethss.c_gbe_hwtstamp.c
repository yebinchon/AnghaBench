
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int dummy; } ;
struct gbe_intf {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int gbe_hwtstamp(struct gbe_intf *gbe_intf,
          struct ifreq *ifr, int cmd)
{
 return -EOPNOTSUPP;
}
