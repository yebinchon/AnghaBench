
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipw2100_priv {TYPE_1__* ieee; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int scan_age; } ;


 struct ipw2100_priv* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_scan_age(struct device *d, struct device_attribute *attr,
        char *buf)
{
 struct ipw2100_priv *priv = dev_get_drvdata(d);
 return sprintf(buf, "%d\n", priv->ieee->scan_age);
}
