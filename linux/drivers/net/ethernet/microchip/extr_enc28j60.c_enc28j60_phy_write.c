
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct enc28j60_net {int lock; } ;


 int MIREGADR ;
 int MIWRL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nolock_regb_write (struct enc28j60_net*,int ,int ) ;
 int nolock_regw_write (struct enc28j60_net*,int ,int ) ;
 int wait_phy_ready (struct enc28j60_net*) ;

__attribute__((used)) static int enc28j60_phy_write(struct enc28j60_net *priv, u8 address, u16 data)
{
 int ret;

 mutex_lock(&priv->lock);

 nolock_regb_write(priv, MIREGADR, address);

 nolock_regw_write(priv, MIWRL, data);

 ret = wait_phy_ready(priv);
 mutex_unlock(&priv->lock);

 return ret;
}
