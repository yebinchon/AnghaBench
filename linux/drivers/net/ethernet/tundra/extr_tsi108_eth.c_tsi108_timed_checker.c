
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsi108_prv_data {int timer; struct net_device* dev; } ;
struct timer_list {int dummy; } ;
struct net_device {int dummy; } ;


 scalar_t__ CHECK_PHY_INTERVAL ;
 struct tsi108_prv_data* data ;
 struct tsi108_prv_data* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int timer ;
 int tsi108_check_phy (struct net_device*) ;
 int tsi108_check_rxring (struct net_device*) ;

__attribute__((used)) static void tsi108_timed_checker(struct timer_list *t)
{
 struct tsi108_prv_data *data = from_timer(data, t, timer);
 struct net_device *dev = data->dev;

 tsi108_check_phy(dev);
 tsi108_check_rxring(dev);
 mod_timer(&data->timer, jiffies + CHECK_PHY_INTERVAL);
}
