
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int rc_dev; int udev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int M9206_CORE ;
 int M9206_RC_KEY ;
 int M9206_RC_STATE ;
 int RC_PROTO_UNKNOWN ;
 int REMOTE_KEY_REPEAT ;
 int REMOTE_NO_KEY_PRESSED ;
 int deb (char*,int ,int ) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int m920x_parse_rc_state (struct dvb_usb_device*,int ,int*) ;
 int m920x_read (int ,int ,int,int ,int *,int) ;
 int rc_keydown (int ,int ,int ,int ) ;
 int rc_keyup (int ) ;
 int rc_repeat (int ) ;

__attribute__((used)) static int m920x_rc_core_query(struct dvb_usb_device *d)
{
 int ret = 0;
 u8 *rc_state;
 int state;

 rc_state = kmalloc(2, GFP_KERNEL);
 if (!rc_state)
  return -ENOMEM;

 if ((ret = m920x_read(d->udev, M9206_CORE, 0x0, M9206_RC_STATE, &rc_state[0], 1)) != 0)
  goto out;

 if ((ret = m920x_read(d->udev, M9206_CORE, 0x0, M9206_RC_KEY, &rc_state[1], 1)) != 0)
  goto out;

 deb("state=0x%02x keycode=0x%02x\n", rc_state[0], rc_state[1]);

 m920x_parse_rc_state(d, rc_state[0], &state);

 if (state == REMOTE_NO_KEY_PRESSED)
  rc_keyup(d->rc_dev);
 else if (state == REMOTE_KEY_REPEAT)
  rc_repeat(d->rc_dev);
 else
  rc_keydown(d->rc_dev, RC_PROTO_UNKNOWN, rc_state[1], 0);

out:
 kfree(rc_state);
 return ret;
}
