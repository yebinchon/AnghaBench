
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_eth {int dev; } ;


 int MTK_PHY_IAC ;
 int PHY_IAC_ACCESS ;
 scalar_t__ PHY_IAC_TIMEOUT ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 int mtk_r32 (struct mtk_eth*,int ) ;
 scalar_t__ time_after (unsigned long,scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mtk_mdio_busy_wait(struct mtk_eth *eth)
{
 unsigned long t_start = jiffies;

 while (1) {
  if (!(mtk_r32(eth, MTK_PHY_IAC) & PHY_IAC_ACCESS))
   return 0;
  if (time_after(jiffies, t_start + PHY_IAC_TIMEOUT))
   break;
  usleep_range(10, 20);
 }

 dev_err(eth->dev, "mdio: MDIO timeout\n");
 return -1;
}
