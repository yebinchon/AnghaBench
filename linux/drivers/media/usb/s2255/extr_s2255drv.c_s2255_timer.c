
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct s2255_fw {int wait_fw; int fw_state; int fw_urb; } ;
struct s2255_dev {struct s2255_fw* fw_data; } ;


 int GFP_ATOMIC ;
 int S2255_FW_FAILED ;
 int atomic_set (int *,int ) ;
 struct s2255_dev* dev ;
 struct s2255_dev* from_timer (int ,struct timer_list*,int ) ;
 int pr_err (char*) ;
 int timer ;
 scalar_t__ usb_submit_urb (int ,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void s2255_timer(struct timer_list *t)
{
 struct s2255_dev *dev = from_timer(dev, t, timer);
 struct s2255_fw *data = dev->fw_data;
 if (usb_submit_urb(data->fw_urb, GFP_ATOMIC) < 0) {
  pr_err("s2255: can't submit urb\n");
  atomic_set(&data->fw_state, S2255_FW_FAILED);

  wake_up(&data->wait_fw);
  return;
 }
}
