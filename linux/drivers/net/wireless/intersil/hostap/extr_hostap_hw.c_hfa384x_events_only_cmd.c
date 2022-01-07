
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int HFA384X_EV_CMD ;
 int HFA384X_INTEN_OFF ;
 int HFA384X_OUTW (int ,int ) ;

__attribute__((used)) static void hfa384x_events_only_cmd(struct net_device *dev)
{
 HFA384X_OUTW(HFA384X_EV_CMD, HFA384X_INTEN_OFF);
}
