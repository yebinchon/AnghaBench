
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct net_device {int dummy; } ;
struct dev_priv {struct net_device* dev; } ;
struct TYPE_3__ {int config2; } ;
struct TYPE_4__ {TYPE_1__ regs; } ;


 int CFG2_CTRLO ;
 int REG_CONFIG2 ;
 int ether3_outw (int,int ) ;
 struct dev_priv* from_timer (int ,struct timer_list*,int ) ;
 TYPE_2__* priv (struct net_device*) ;
 struct dev_priv* private ;
 int timer ;

__attribute__((used)) static void ether3_ledoff(struct timer_list *t)
{
 struct dev_priv *private = from_timer(private, t, timer);
 struct net_device *dev = private->dev;

 ether3_outw(priv(dev)->regs.config2 |= CFG2_CTRLO, REG_CONFIG2);
}
