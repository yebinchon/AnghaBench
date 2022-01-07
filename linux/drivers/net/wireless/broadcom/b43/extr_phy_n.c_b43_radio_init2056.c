
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int b2056_upload_inittabs (struct b43_wldev*,int ,int ) ;
 int b43_radio_init2056_post (struct b43_wldev*) ;
 int b43_radio_init2056_pre (struct b43_wldev*) ;

__attribute__((used)) static void b43_radio_init2056(struct b43_wldev *dev)
{
 b43_radio_init2056_pre(dev);
 b2056_upload_inittabs(dev, 0, 0);
 b43_radio_init2056_post(dev);
}
