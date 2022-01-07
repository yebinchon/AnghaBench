
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ravb_private {int speed; } ;
struct net_device {int dummy; } ;


 int GECMR ;
 int GECMR_SPEED_100 ;
 int GECMR_SPEED_1000 ;
 struct ravb_private* netdev_priv (struct net_device*) ;
 int ravb_write (struct net_device*,int ,int ) ;

__attribute__((used)) static void ravb_set_rate(struct net_device *ndev)
{
 struct ravb_private *priv = netdev_priv(ndev);

 switch (priv->speed) {
 case 100:
  ravb_write(ndev, GECMR_SPEED_100, GECMR);
  break;
 case 1000:
  ravb_write(ndev, GECMR_SPEED_1000, GECMR);
  break;
 }
}
