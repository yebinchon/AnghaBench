
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_5__ {int command; } ;
struct TYPE_6__ {TYPE_1__ getflags; } ;
typedef TYPE_2__ lt_command ;


 int LT_GETFLAGS ;
 int do_read (struct net_device*,TYPE_2__*,int,TYPE_2__*,int ) ;

__attribute__((used)) static int read_30 ( struct net_device *dev)
{
 lt_command c;
 c.getflags.command = LT_GETFLAGS;
 return do_read(dev, &c, sizeof(c.getflags),&c,0);
}
