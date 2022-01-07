
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw_priv {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int IPW_ORD_STAT_UCODE_VERSION ;
 struct ipw_priv* dev_get_drvdata (struct device*) ;
 scalar_t__ ipw_get_ordinal (struct ipw_priv*,int ,int*,int*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_ucode_version(struct device *d,
      struct device_attribute *attr, char *buf)
{
 u32 len = sizeof(u32), tmp = 0;
 struct ipw_priv *p = dev_get_drvdata(d);

 if (ipw_get_ordinal(p, IPW_ORD_STAT_UCODE_VERSION, &tmp, &len))
  return 0;

 return sprintf(buf, "0x%08x\n", tmp);
}
