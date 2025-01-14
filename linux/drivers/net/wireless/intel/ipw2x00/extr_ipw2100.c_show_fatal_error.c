
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw2100_priv {int fatal_error; int* fatal_errors; int fatal_index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int IPW2100_ERROR_QUEUE ;
 struct ipw2100_priv* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t show_fatal_error(struct device *d,
    struct device_attribute *attr, char *buf)
{
 struct ipw2100_priv *priv = dev_get_drvdata(d);
 char *out = buf;
 int i;

 if (priv->fatal_error)
  out += sprintf(out, "0x%08X\n", priv->fatal_error);
 else
  out += sprintf(out, "0\n");

 for (i = 1; i <= IPW2100_ERROR_QUEUE; i++) {
  if (!priv->fatal_errors[(priv->fatal_index - i) %
     IPW2100_ERROR_QUEUE])
   continue;

  out += sprintf(out, "%d. 0x%08X\n", i,
          priv->fatal_errors[(priv->fatal_index - i) %
        IPW2100_ERROR_QUEUE]);
 }

 return out - buf;
}
