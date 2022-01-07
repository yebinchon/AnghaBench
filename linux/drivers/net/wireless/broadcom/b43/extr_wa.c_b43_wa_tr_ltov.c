
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int B43_GTAB_ORIGTR ;
 int b43_gtab_write (struct b43_wldev*,int ,int ,int) ;

__attribute__((used)) static void b43_wa_tr_ltov(struct b43_wldev *dev)
{
 b43_gtab_write(dev, B43_GTAB_ORIGTR, 0, 0x7654);
}
