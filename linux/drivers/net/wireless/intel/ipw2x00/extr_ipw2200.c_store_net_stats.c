
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int config; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int CFG_NET_STATS ;
 struct ipw_priv* dev_get_drvdata (struct device*) ;

__attribute__((used)) static ssize_t store_net_stats(struct device *d, struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct ipw_priv *priv = dev_get_drvdata(d);
 if (buf[0] == '1')
  priv->config |= CFG_NET_STATS;
 else
  priv->config &= ~CFG_NET_STATS;

 return count;
}
