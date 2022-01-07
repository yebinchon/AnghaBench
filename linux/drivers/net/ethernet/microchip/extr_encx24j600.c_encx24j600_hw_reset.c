
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encx24j600_priv {int lock; } ;


 int encx24j600_soft_reset (struct encx24j600_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int encx24j600_hw_reset(struct encx24j600_priv *priv)
{
 int ret;

 mutex_lock(&priv->lock);
 ret = encx24j600_soft_reset(priv);
 mutex_unlock(&priv->lock);

 return ret;
}
