
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mwifiex_private {scalar_t__ csa_chan; scalar_t__ csa_expire_time; } ;


 int jiffies ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static inline u8
mwifiex_11h_get_csa_closed_channel(struct mwifiex_private *priv)
{
 if (!priv->csa_chan)
  return 0;


 if (time_after(jiffies, priv->csa_expire_time)) {
  priv->csa_chan = 0;
  priv->csa_expire_time = 0;
 }

 return priv->csa_chan;
}
