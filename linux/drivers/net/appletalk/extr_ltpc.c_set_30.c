
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_5__ {int flags; int command; } ;
struct TYPE_6__ {TYPE_1__ setflags; } ;
typedef TYPE_2__ lt_command ;


 int LT_SETFLAGS ;
 int do_write (struct net_device*,TYPE_2__*,int,TYPE_2__*,int ) ;

__attribute__((used)) static int set_30 (struct net_device *dev,int x)
{
 lt_command c;
 c.setflags.command = LT_SETFLAGS;
 c.setflags.flags = x;
 return do_write(dev, &c, sizeof(c.setflags),&c,0);
}
