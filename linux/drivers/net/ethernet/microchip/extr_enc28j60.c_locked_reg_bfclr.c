
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct enc28j60_net {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nolock_reg_bfclr (struct enc28j60_net*,int ,int ) ;

__attribute__((used)) static void locked_reg_bfclr(struct enc28j60_net *priv, u8 addr, u8 mask)
{
 mutex_lock(&priv->lock);
 nolock_reg_bfclr(priv, addr, mask);
 mutex_unlock(&priv->lock);
}
