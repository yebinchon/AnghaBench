
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int channel; } ;


 int lbs_get_channel (struct lbs_private*) ;

int lbs_update_channel(struct lbs_private *priv)
{
 int ret;


 ret = lbs_get_channel(priv);
 if (ret > 0) {
  priv->channel = ret;
  ret = 0;
 }

 return ret;
}
