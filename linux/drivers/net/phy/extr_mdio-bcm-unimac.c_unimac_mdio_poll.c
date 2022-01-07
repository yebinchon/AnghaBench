
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unimac_mdio_priv {int dummy; } ;


 int ETIMEDOUT ;
 int unimac_mdio_busy (struct unimac_mdio_priv*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int unimac_mdio_poll(void *wait_func_data)
{
 struct unimac_mdio_priv *priv = wait_func_data;
 unsigned int timeout = 1000;

 do {
  if (!unimac_mdio_busy(priv))
   return 0;

  usleep_range(1000, 2000);
 } while (--timeout);

 return -ETIMEDOUT;
}
