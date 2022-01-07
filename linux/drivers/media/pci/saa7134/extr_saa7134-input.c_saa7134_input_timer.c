
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct saa7134_dev {int dummy; } ;
struct saa7134_card_ir {int polling; int timer; TYPE_1__* dev; } ;
struct TYPE_2__ {struct saa7134_dev* priv; } ;


 int build_key (struct saa7134_dev*) ;
 struct saa7134_card_ir* from_timer (int ,struct timer_list*,int ) ;
 struct saa7134_card_ir* ir ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int timer ;

__attribute__((used)) static void saa7134_input_timer(struct timer_list *t)
{
 struct saa7134_card_ir *ir = from_timer(ir, t, timer);
 struct saa7134_dev *dev = ir->dev->priv;

 build_key(dev);
 mod_timer(&ir->timer, jiffies + msecs_to_jiffies(ir->polling));
}
