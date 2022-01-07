
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libipw_geo {int dummy; } ;
struct libipw_device {struct libipw_geo const geo; } ;



const struct libipw_geo *libipw_get_geo(struct libipw_device *ieee)
{
 return &ieee->geo;
}
