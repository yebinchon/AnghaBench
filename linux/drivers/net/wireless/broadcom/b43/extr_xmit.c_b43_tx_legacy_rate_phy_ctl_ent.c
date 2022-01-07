
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct b43_tx_legacy_rate_phy_ctl_entry {scalar_t__ bitrate; } ;


 unsigned int ARRAY_SIZE (struct b43_tx_legacy_rate_phy_ctl_entry*) ;
 int B43_WARN_ON (int) ;
 struct b43_tx_legacy_rate_phy_ctl_entry* b43_tx_legacy_rate_phy_ctl ;

__attribute__((used)) static const struct b43_tx_legacy_rate_phy_ctl_entry *
b43_tx_legacy_rate_phy_ctl_ent(u8 bitrate)
{
 const struct b43_tx_legacy_rate_phy_ctl_entry *e;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(b43_tx_legacy_rate_phy_ctl); i++) {
  e = &(b43_tx_legacy_rate_phy_ctl[i]);
  if (e->bitrate == bitrate)
   return e;
 }

 B43_WARN_ON(1);
 return ((void*)0);
}
