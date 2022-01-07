
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int PID_LCP ;
 int STOP ;
 int ppp_cp_event (struct net_device*,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static void ppp_stop(struct net_device *dev)
{
 ppp_cp_event(dev, PID_LCP, STOP, 0, 0, 0, ((void*)0));
}
