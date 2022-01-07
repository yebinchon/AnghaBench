
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {scalar_t__ vfl_dir; } ;
struct v4l2_frequency {int tuner; int frequency; int type; } ;
struct usb_interface {int dev; } ;
struct hackrf_dev {unsigned int f_adc; unsigned int f_dac; unsigned int f_rx; unsigned int f_tx; int flags; struct usb_interface* intf; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int rangehigh; int rangelow; } ;
struct TYPE_3__ {int rangehigh; int rangelow; } ;


 int EINVAL ;
 int RX_ADC_FREQUENCY ;
 int RX_RF_FREQUENCY ;
 int TX_DAC_FREQUENCY ;
 int TX_RF_FREQUENCY ;
 scalar_t__ VFL_DIR_RX ;
 TYPE_2__* bands_adc_dac ;
 TYPE_1__* bands_rx_tx ;
 unsigned int clamp (int ,int ,int ) ;
 int dev_dbg (int *,char*,int,...) ;
 int hackrf_set_params (struct hackrf_dev*) ;
 int set_bit (int ,int *) ;
 struct video_device* video_devdata (struct file*) ;
 struct hackrf_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int hackrf_s_frequency(struct file *file, void *priv,
  const struct v4l2_frequency *f)
{
 struct hackrf_dev *dev = video_drvdata(file);
 struct usb_interface *intf = dev->intf;
 struct video_device *vdev = video_devdata(file);
 int ret;
 unsigned int uitmp;

 dev_dbg(&intf->dev, "tuner=%d type=%d frequency=%u\n",
   f->tuner, f->type, f->frequency);

 if (f->tuner == 0) {
  uitmp = clamp(f->frequency, bands_adc_dac[0].rangelow,
         bands_adc_dac[0].rangehigh);
  if (vdev->vfl_dir == VFL_DIR_RX) {
   dev->f_adc = uitmp;
   set_bit(RX_ADC_FREQUENCY, &dev->flags);
  } else {
   dev->f_dac = uitmp;
   set_bit(TX_DAC_FREQUENCY, &dev->flags);
  }
 } else if (f->tuner == 1) {
  uitmp = clamp(f->frequency, bands_rx_tx[0].rangelow,
         bands_rx_tx[0].rangehigh);
  if (vdev->vfl_dir == VFL_DIR_RX) {
   dev->f_rx = uitmp;
   set_bit(RX_RF_FREQUENCY, &dev->flags);
  } else {
   dev->f_tx = uitmp;
   set_bit(TX_RF_FREQUENCY, &dev->flags);
  }
 } else {
  ret = -EINVAL;
  goto err;
 }

 ret = hackrf_set_params(dev);
 if (ret)
  goto err;

 return 0;
err:
 dev_dbg(&intf->dev, "failed=%d\n", ret);
 return ret;
}
