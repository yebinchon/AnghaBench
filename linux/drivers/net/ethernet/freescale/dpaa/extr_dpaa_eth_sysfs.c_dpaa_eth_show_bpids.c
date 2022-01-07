
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpaa_priv {TYPE_1__** dpaa_bps; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int bpid; } ;


 int DPAA_BPS_NUM ;
 int PAGE_SIZE ;
 struct dpaa_priv* netdev_priv (int ) ;
 int snprintf (char*,int,char*,int) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t dpaa_eth_show_bpids(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct dpaa_priv *priv = netdev_priv(to_net_dev(dev));
 ssize_t bytes = 0;
 int i = 0;

 for (i = 0; i < DPAA_BPS_NUM; i++)
  bytes += snprintf(buf + bytes, PAGE_SIZE - bytes, "%u\n",
      priv->dpaa_bps[i]->bpid);

 return bytes;
}
