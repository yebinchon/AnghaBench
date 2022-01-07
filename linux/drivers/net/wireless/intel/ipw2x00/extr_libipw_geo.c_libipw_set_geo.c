
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct libipw_geo {int bg_channels; int a_channels; int a; int bg; int name; } ;
struct TYPE_2__ {char* name; int bg_channels; int a_channels; char* bg; char* a; } ;
struct libipw_device {TYPE_1__ geo; } ;
struct libipw_channel {int dummy; } ;


 int memcpy (char*,int ,int) ;

void libipw_set_geo(struct libipw_device *ieee,
        const struct libipw_geo *geo)
{
 memcpy(ieee->geo.name, geo->name, 3);
 ieee->geo.name[3] = '\0';
 ieee->geo.bg_channels = geo->bg_channels;
 ieee->geo.a_channels = geo->a_channels;
 memcpy(ieee->geo.bg, geo->bg, geo->bg_channels *
        sizeof(struct libipw_channel));
 memcpy(ieee->geo.a, geo->a, ieee->geo.a_channels *
        sizeof(struct libipw_channel));
}
