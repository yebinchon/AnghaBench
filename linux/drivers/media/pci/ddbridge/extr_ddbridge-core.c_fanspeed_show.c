
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int* name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
struct ddb_link {int dummy; } ;
struct ddb {struct ddb_link* link; } ;
typedef int ssize_t ;


 int TEMPMON_FANCONTROL ;
 int ddblreadl (struct ddb_link*,int ) ;
 struct ddb* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t fanspeed_show(struct device *device,
        struct device_attribute *attr, char *buf)
{
 struct ddb *dev = dev_get_drvdata(device);
 int num = attr->attr.name[8] - 0x30;
 struct ddb_link *link = &dev->link[num];
 u32 spd;

 spd = ddblreadl(link, TEMPMON_FANCONTROL) & 0xff;
 return sprintf(buf, "%u\n", spd * 100);
}
