
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enc28j60_net {int hw_enable; int lock; } ;


 int ECON1 ;
 int ECON1_RXEN ;
 int EIE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nolock_reg_bfclr (struct enc28j60_net*,int ,int ) ;
 int nolock_regb_write (struct enc28j60_net*,int ,int) ;

__attribute__((used)) static void enc28j60_hw_disable(struct enc28j60_net *priv)
{
 mutex_lock(&priv->lock);

 nolock_regb_write(priv, EIE, 0x00);
 nolock_reg_bfclr(priv, ECON1, ECON1_RXEN);
 priv->hw_enable = 0;
 mutex_unlock(&priv->lock);
}
