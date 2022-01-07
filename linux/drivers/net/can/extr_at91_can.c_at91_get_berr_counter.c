
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct can_berr_counter {int rxerr; int txerr; } ;
struct at91_priv {int dummy; } ;


 int AT91_ECR ;
 int at91_read (struct at91_priv const*,int ) ;
 struct at91_priv* netdev_priv (struct net_device const*) ;

__attribute__((used)) static int at91_get_berr_counter(const struct net_device *dev,
  struct can_berr_counter *bec)
{
 const struct at91_priv *priv = netdev_priv(dev);
 u32 reg_ecr = at91_read(priv, AT91_ECR);

 bec->rxerr = reg_ecr & 0xff;
 bec->txerr = reg_ecr >> 16;

 return 0;
}
