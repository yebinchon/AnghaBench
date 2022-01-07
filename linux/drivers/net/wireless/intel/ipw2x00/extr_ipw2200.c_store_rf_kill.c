
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 struct ipw_priv* dev_get_drvdata (struct device*) ;
 int ipw_radio_kill_sw (struct ipw_priv*,int) ;

__attribute__((used)) static ssize_t store_rf_kill(struct device *d, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct ipw_priv *priv = dev_get_drvdata(d);

 ipw_radio_kill_sw(priv, buf[0] == '1');

 return count;
}
