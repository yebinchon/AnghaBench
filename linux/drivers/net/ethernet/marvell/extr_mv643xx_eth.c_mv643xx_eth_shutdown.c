
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mv643xx_eth_private {int dev; } ;


 int INT_MASK ;
 scalar_t__ netif_running (int ) ;
 struct mv643xx_eth_private* platform_get_drvdata (struct platform_device*) ;
 int port_reset (struct mv643xx_eth_private*) ;
 int rdlp (struct mv643xx_eth_private*,int ) ;
 int wrlp (struct mv643xx_eth_private*,int ,int ) ;

__attribute__((used)) static void mv643xx_eth_shutdown(struct platform_device *pdev)
{
 struct mv643xx_eth_private *mp = platform_get_drvdata(pdev);


 wrlp(mp, INT_MASK, 0);
 rdlp(mp, INT_MASK);

 if (netif_running(mp->dev))
  port_reset(mp);
}
