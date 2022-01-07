
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw2100_priv {scalar_t__ capability; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct ipw2100_priv* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_capability(struct device *d, struct device_attribute *attr,
          char *buf)
{
 struct ipw2100_priv *p = dev_get_drvdata(d);
 return sprintf(buf, "0x%08x\n", (int)p->capability);
}
