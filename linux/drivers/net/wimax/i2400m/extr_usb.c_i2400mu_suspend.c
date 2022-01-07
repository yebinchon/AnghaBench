
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct usb_interface {struct device dev; } ;
struct i2400m {scalar_t__ updown; scalar_t__ state; } ;
struct i2400mu {int do_autopm; struct i2400m i2400m; } ;
struct TYPE_4__ {int event; } ;
typedef TYPE_1__ pm_message_t ;


 int EBADF ;
 scalar_t__ I2400M_SS_DATA_PATH_CONNECTED ;
 scalar_t__ PMSG_IS_AUTO (TYPE_1__) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int d_fnend (int,struct device*,char*,struct usb_interface*,int ,int) ;
 int d_fnstart (int,struct device*,char*,struct usb_interface*,int ) ;
 int d_printf (int,struct device*,char*) ;
 int dev_err (struct device*,char*) ;
 int i2400m_cmd_enter_powersave (struct i2400m*) ;
 int i2400mu_notification_release (struct i2400mu*) ;
 int rmb () ;
 struct i2400mu* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static
int i2400mu_suspend(struct usb_interface *iface, pm_message_t pm_msg)
{
 int result = 0;
 struct device *dev = &iface->dev;
 struct i2400mu *i2400mu = usb_get_intfdata(iface);
 unsigned is_autosuspend = 0;
 struct i2400m *i2400m = &i2400mu->i2400m;






 d_fnstart(3, dev, "(iface %p pm_msg %u)\n", iface, pm_msg.event);
 rmb();
 if (i2400m->updown == 0)
  goto no_firmware;
 if (i2400m->state == I2400M_SS_DATA_PATH_CONNECTED && is_autosuspend) {
  result = -EBADF;
  d_printf(1, dev, "fw up, link up, not-idle, autosuspend: "
    "not entering powersave\n");
  goto error_not_now;
 }
 d_printf(1, dev, "fw up: entering powersave\n");
 atomic_dec(&i2400mu->do_autopm);
 result = i2400m_cmd_enter_powersave(i2400m);
 atomic_inc(&i2400mu->do_autopm);
 if (result < 0 && !is_autosuspend) {

  dev_err(dev, "failed to suspend, will reset on resume\n");
  result = 0;
 }
 if (result < 0)
  goto error_enter_powersave;
 i2400mu_notification_release(i2400mu);
 d_printf(1, dev, "powersave requested\n");
error_enter_powersave:
error_not_now:
no_firmware:
 d_fnend(3, dev, "(iface %p pm_msg %u) = %d\n",
  iface, pm_msg.event, result);
 return result;
}
