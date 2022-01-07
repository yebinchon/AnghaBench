
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;
struct cadet {int rdsstat; TYPE_1__ readtimer; int io; } ;


 int add_timer (TYPE_1__*) ;
 int cadet_handler ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;
 int outb (int,int ) ;
 int timer_setup (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void cadet_start_rds(struct cadet *dev)
{
 dev->rdsstat = 1;
 outb(0x80, dev->io);
 timer_setup(&dev->readtimer, cadet_handler, 0);
 dev->readtimer.expires = jiffies + msecs_to_jiffies(50);
 add_timer(&dev->readtimer);
}
