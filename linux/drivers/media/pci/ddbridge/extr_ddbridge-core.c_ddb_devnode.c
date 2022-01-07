
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct device {int dummy; } ;
struct ddb {int nr; } ;


 int GFP_KERNEL ;
 struct ddb* dev_get_drvdata (struct device*) ;
 char* kasprintf (int ,char*,int ) ;

__attribute__((used)) static char *ddb_devnode(struct device *device, umode_t *mode)
{
 struct ddb *dev = dev_get_drvdata(device);

 return kasprintf(GFP_KERNEL, "ddbridge/card%d", dev->nr);
}
