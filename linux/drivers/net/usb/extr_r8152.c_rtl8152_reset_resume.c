
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_2__ {int (* init ) (struct r8152*) ;} ;
struct r8152 {int hw_phy_work; TYPE_1__ rtl_ops; int flags; } ;


 int SELECTIVE_SUSPEND ;
 int clear_bit (int ,int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 int rtl8152_resume (struct usb_interface*) ;
 int set_ethernet_addr (struct r8152*) ;
 int stub1 (struct r8152*) ;
 int system_long_wq ;
 struct r8152* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int rtl8152_reset_resume(struct usb_interface *intf)
{
 struct r8152 *tp = usb_get_intfdata(intf);

 clear_bit(SELECTIVE_SUSPEND, &tp->flags);
 tp->rtl_ops.init(tp);
 queue_delayed_work(system_long_wq, &tp->hw_phy_work, 0);
 set_ethernet_addr(tp);
 return rtl8152_resume(intf);
}
