
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pcmcia_device {int dev; } ;
struct TYPE_7__ {scalar_t__ expires; int function; } ;
struct TYPE_6__ {int authentication_state; TYPE_2__ timer; int bss_id; struct pcmcia_device* finder; } ;
typedef TYPE_1__ ray_dev_t ;


 int AWAITING_RESPONSE ;
 int HZ ;
 int OPEN_AUTH_REQUEST ;
 int add_timer (TYPE_2__*) ;
 int authenticate_timeout ;
 scalar_t__ build_auth_frame (TYPE_1__*,int ,int ) ;
 int del_timer (TYPE_2__*) ;
 int dev_dbg (int *,char*) ;
 scalar_t__ jiffies ;
 int join_net ;
 int pcmcia_dev_present (struct pcmcia_device*) ;

__attribute__((used)) static void authenticate(ray_dev_t *local)
{
 struct pcmcia_device *link = local->finder;
 dev_dbg(&link->dev, "ray_cs Starting authentication.\n");
 if (!(pcmcia_dev_present(link))) {
  dev_dbg(&link->dev, "ray_cs authenticate - device not present\n");
  return;
 }

 del_timer(&local->timer);
 if (build_auth_frame(local, local->bss_id, OPEN_AUTH_REQUEST)) {
  local->timer.function = join_net;
 } else {
  local->timer.function = authenticate_timeout;
 }
 local->timer.expires = jiffies + HZ * 2;
 add_timer(&local->timer);
 local->authentication_state = AWAITING_RESPONSE;
}
