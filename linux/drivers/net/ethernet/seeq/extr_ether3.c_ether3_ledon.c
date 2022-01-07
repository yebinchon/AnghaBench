
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_7__ {scalar_t__ expires; } ;
struct TYPE_5__ {int config2; } ;
struct TYPE_6__ {TYPE_1__ regs; TYPE_3__ timer; } ;


 int CFG2_CTRLO ;
 int HZ ;
 int REG_CONFIG2 ;
 int add_timer (TYPE_3__*) ;
 int del_timer (TYPE_3__*) ;
 int ether3_outw (int,int ) ;
 scalar_t__ jiffies ;
 TYPE_2__* priv (struct net_device*) ;

__attribute__((used)) static inline void ether3_ledon(struct net_device *dev)
{
 del_timer(&priv(dev)->timer);
 priv(dev)->timer.expires = jiffies + HZ / 50;
 add_timer(&priv(dev)->timer);
 if (priv(dev)->regs.config2 & CFG2_CTRLO)
  ether3_outw(priv(dev)->regs.config2 &= ~CFG2_CTRLO, REG_CONFIG2);
}
