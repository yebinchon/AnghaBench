
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_setting {scalar_t__ bit; int speed; int duplex; } ;


 int ARRAY_SIZE (struct phy_setting*) ;
 scalar_t__ __ETHTOOL_LINK_MODE_MASK_NBITS ;
 struct phy_setting* settings ;
 scalar_t__ test_bit (scalar_t__,unsigned long const*) ;

const struct phy_setting *
phy_lookup_setting(int speed, int duplex, const unsigned long *mask, bool exact)
{
 const struct phy_setting *p, *match = ((void*)0), *last = ((void*)0);
 int i;

 for (i = 0, p = settings; i < ARRAY_SIZE(settings); i++, p++) {
  if (p->bit < __ETHTOOL_LINK_MODE_MASK_NBITS &&
      test_bit(p->bit, mask)) {
   last = p;
   if (p->speed == speed && p->duplex == duplex) {

    match = p;
    break;
   } else if (!exact) {
    if (!match && p->speed <= speed)

     match = p;

    if (p->speed < speed)
     break;
   }
  }
 }

 if (!match && !exact)
  match = last;

 return match;
}
