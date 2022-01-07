
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int hi3110_do_set_bittiming (struct net_device*) ;

__attribute__((used)) static int hi3110_setup(struct net_device *net)
{
 hi3110_do_set_bittiming(net);
 return 0;
}
