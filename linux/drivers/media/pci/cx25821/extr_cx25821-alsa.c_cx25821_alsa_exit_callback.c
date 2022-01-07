
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_device {int dummy; } ;
struct device {int dummy; } ;
struct cx25821_dev {int card; } ;


 struct v4l2_device* dev_get_drvdata (struct device*) ;
 struct cx25821_dev* get_cx25821 (struct v4l2_device*) ;
 int snd_card_free (int ) ;

__attribute__((used)) static int cx25821_alsa_exit_callback(struct device *dev, void *data)
{
 struct v4l2_device *v4l2_dev = dev_get_drvdata(dev);
 struct cx25821_dev *cxdev = get_cx25821(v4l2_dev);

 snd_card_free(cxdev->card);
 return 0;
}
