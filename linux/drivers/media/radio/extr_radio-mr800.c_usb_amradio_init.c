
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct amradio_device {TYPE_1__ vdev; int curfreq; } ;


 int amradio_dev_err (int *,char*) ;
 int amradio_set_freq (struct amradio_device*,int ) ;
 int amradio_set_mute (struct amradio_device*,int) ;
 int amradio_set_stereo (struct amradio_device*,int) ;

__attribute__((used)) static int usb_amradio_init(struct amradio_device *radio)
{
 int retval;

 retval = amradio_set_mute(radio, 1);
 if (retval)
  goto out_err;
 retval = amradio_set_stereo(radio, 1);
 if (retval)
  goto out_err;
 retval = amradio_set_freq(radio, radio->curfreq);
 if (retval)
  goto out_err;
 return 0;

out_err:
 amradio_dev_err(&radio->vdev.dev, "initialization failed\n");
 return retval;
}
