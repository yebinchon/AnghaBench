
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct v4l2_subdev {int ctrl_handler; } ;
struct radio_si4713_platform_data {int subdev; } ;
struct TYPE_8__ {int device_caps; int * lock; int ctrl_handler; int * v4l2_dev; } ;
struct radio_si4713_device {int v4l2_dev; TYPE_1__ radio_dev; int lock; } ;
struct TYPE_9__ {struct radio_si4713_platform_data* platform_data; } ;
struct platform_device {TYPE_3__ dev; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int V4L2_CAP_MODULATOR ;
 int V4L2_CAP_RDS_OUTPUT ;
 int VFL_TYPE_RADIO ;
 int dev_err (TYPE_3__*,char*) ;
 int dev_info (TYPE_3__*,char*) ;
 struct radio_si4713_device* devm_kzalloc (TYPE_3__*,int,int ) ;
 struct v4l2_subdev* i2c_get_clientdata (int ) ;
 int mutex_init (int *) ;
 int radio_nr ;
 TYPE_1__ radio_si4713_vdev_template ;
 int v4l2_device_register (TYPE_3__*,int *) ;
 int v4l2_device_register_subdev (int *,struct v4l2_subdev*) ;
 int v4l2_device_unregister (int *) ;
 scalar_t__ video_register_device (TYPE_1__*,int ,int ) ;
 int video_set_drvdata (TYPE_1__*,struct radio_si4713_device*) ;

__attribute__((used)) static int radio_si4713_pdriver_probe(struct platform_device *pdev)
{
 struct radio_si4713_platform_data *pdata = pdev->dev.platform_data;
 struct radio_si4713_device *rsdev;
 struct v4l2_subdev *sd;
 int rval = 0;

 if (!pdata) {
  dev_err(&pdev->dev, "Cannot proceed without platform data.\n");
  rval = -EINVAL;
  goto exit;
 }

 rsdev = devm_kzalloc(&pdev->dev, sizeof(*rsdev), GFP_KERNEL);
 if (!rsdev) {
  dev_err(&pdev->dev, "Failed to alloc video device.\n");
  rval = -ENOMEM;
  goto exit;
 }
 mutex_init(&rsdev->lock);

 rval = v4l2_device_register(&pdev->dev, &rsdev->v4l2_dev);
 if (rval) {
  dev_err(&pdev->dev, "Failed to register v4l2 device.\n");
  goto exit;
 }

 sd = i2c_get_clientdata(pdata->subdev);
 rval = v4l2_device_register_subdev(&rsdev->v4l2_dev, sd);
 if (rval) {
  dev_err(&pdev->dev, "Cannot get v4l2 subdevice\n");
  goto unregister_v4l2_dev;
 }

 rsdev->radio_dev = radio_si4713_vdev_template;
 rsdev->radio_dev.v4l2_dev = &rsdev->v4l2_dev;
 rsdev->radio_dev.ctrl_handler = sd->ctrl_handler;

 rsdev->radio_dev.lock = &rsdev->lock;
 rsdev->radio_dev.device_caps = V4L2_CAP_MODULATOR | V4L2_CAP_RDS_OUTPUT;
 video_set_drvdata(&rsdev->radio_dev, rsdev);
 if (video_register_device(&rsdev->radio_dev, VFL_TYPE_RADIO, radio_nr)) {
  dev_err(&pdev->dev, "Could not register video device.\n");
  rval = -EIO;
  goto unregister_v4l2_dev;
 }
 dev_info(&pdev->dev, "New device successfully probed\n");

 goto exit;

unregister_v4l2_dev:
 v4l2_device_unregister(&rsdev->v4l2_dev);
exit:
 return rval;
}
