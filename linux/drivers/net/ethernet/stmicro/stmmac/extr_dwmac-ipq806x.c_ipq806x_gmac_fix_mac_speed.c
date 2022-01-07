
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipq806x_gmac {int dummy; } ;


 int ipq806x_gmac_set_speed (struct ipq806x_gmac*,unsigned int) ;

__attribute__((used)) static void ipq806x_gmac_fix_mac_speed(void *priv, unsigned int speed)
{
 struct ipq806x_gmac *gmac = priv;

 ipq806x_gmac_set_speed(gmac, speed);
}
