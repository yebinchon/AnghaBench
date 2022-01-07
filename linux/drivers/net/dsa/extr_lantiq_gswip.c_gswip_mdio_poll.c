
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gswip_priv {int dummy; } ;


 int ETIMEDOUT ;
 int GSWIP_MDIO_CTRL ;
 int GSWIP_MDIO_CTRL_BUSY ;
 int gswip_mdio_r (struct gswip_priv*,int ) ;
 scalar_t__ likely (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int gswip_mdio_poll(struct gswip_priv *priv)
{
 int cnt = 100;

 while (likely(cnt--)) {
  u32 ctrl = gswip_mdio_r(priv, GSWIP_MDIO_CTRL);

  if ((ctrl & GSWIP_MDIO_CTRL_BUSY) == 0)
   return 0;
  usleep_range(20, 40);
 }

 return -ETIMEDOUT;
}
