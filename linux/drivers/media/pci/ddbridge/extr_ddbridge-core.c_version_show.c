
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ddb {TYPE_2__* link; } ;
typedef int ssize_t ;
struct TYPE_3__ {int hwid; int regmapid; } ;
struct TYPE_4__ {TYPE_1__ ids; } ;


 struct ddb* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static ssize_t version_show(struct device *device,
       struct device_attribute *attr, char *buf)
{
 struct ddb *dev = dev_get_drvdata(device);

 return sprintf(buf, "%08x %08x\n",
         dev->link[0].ids.hwid, dev->link[0].ids.regmapid);
}
