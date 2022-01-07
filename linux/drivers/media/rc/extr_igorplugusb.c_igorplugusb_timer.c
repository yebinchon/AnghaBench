
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct igorplugusb {int dummy; } ;


 int GET_INFRACODE ;
 struct igorplugusb* from_timer (int ,struct timer_list*,int ) ;
 int igorplugusb_cmd (struct igorplugusb*,int ) ;
 struct igorplugusb* ir ;
 int timer ;

__attribute__((used)) static void igorplugusb_timer(struct timer_list *t)
{
 struct igorplugusb *ir = from_timer(ir, t, timer);

 igorplugusb_cmd(ir, GET_INFRACODE);
}
