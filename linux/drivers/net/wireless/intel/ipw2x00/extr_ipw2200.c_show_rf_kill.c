
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int STATUS_RF_KILL_SW ;
 struct ipw_priv* dev_get_drvdata (struct device*) ;
 scalar_t__ rf_kill_active (struct ipw_priv*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_rf_kill(struct device *d, struct device_attribute *attr,
       char *buf)
{




 struct ipw_priv *priv = dev_get_drvdata(d);
 int val = ((priv->status & STATUS_RF_KILL_SW) ? 0x1 : 0x0) |
     (rf_kill_active(priv) ? 0x2 : 0x0);
 return sprintf(buf, "%i\n", val);
}
