
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int link_up; int dev; } ;


 int netif_carrier_off (int ) ;

__attribute__((used)) static void tg3_carrier_off(struct tg3 *tp)
{
 netif_carrier_off(tp->dev);
 tp->link_up = 0;
}
