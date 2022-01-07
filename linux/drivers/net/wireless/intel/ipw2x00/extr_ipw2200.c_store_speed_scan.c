
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int* speed_scan; int config; scalar_t__ speed_scan_pos; int ieee; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int CFG_SPEED_SCAN ;
 int IPW_WARNING (char*,int) ;
 int MAX_SPEED_SCAN ;
 struct ipw_priv* dev_get_drvdata (struct device*) ;
 scalar_t__ libipw_is_valid_channel (int ,int) ;
 int simple_strtol (char const*,int *,int ) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static ssize_t store_speed_scan(struct device *d, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct ipw_priv *priv = dev_get_drvdata(d);
 int channel, pos = 0;
 const char *p = buf;


 while ((channel = simple_strtol(p, ((void*)0), 0))) {
  if (pos == MAX_SPEED_SCAN - 1) {
   priv->speed_scan[pos] = 0;
   break;
  }

  if (libipw_is_valid_channel(priv->ieee, channel))
   priv->speed_scan[pos++] = channel;
  else
   IPW_WARNING("Skipping invalid channel request: %d\n",
        channel);
  p = strchr(p, ' ');
  if (!p)
   break;
  while (*p == ' ' || *p == '\t')
   p++;
 }

 if (pos == 0)
  priv->config &= ~CFG_SPEED_SCAN;
 else {
  priv->speed_scan_pos = 0;
  priv->config |= CFG_SPEED_SCAN;
 }

 return count;
}
