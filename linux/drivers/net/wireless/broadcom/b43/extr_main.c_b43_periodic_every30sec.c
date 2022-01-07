
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int b43_calculate_link_quality (struct b43_wldev*) ;

__attribute__((used)) static void b43_periodic_every30sec(struct b43_wldev *dev)
{

 b43_calculate_link_quality(dev);
}
