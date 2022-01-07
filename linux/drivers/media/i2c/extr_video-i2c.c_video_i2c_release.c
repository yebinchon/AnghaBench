
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_i2c_data {int regmap; int queue_lock; int lock; int v4l2_dev; } ;
struct video_device {int dummy; } ;


 int kfree (struct video_i2c_data*) ;
 int mutex_destroy (int *) ;
 int regmap_exit (int ) ;
 int v4l2_device_unregister (int *) ;
 struct video_i2c_data* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static void video_i2c_release(struct video_device *vdev)
{
 struct video_i2c_data *data = video_get_drvdata(vdev);

 v4l2_device_unregister(&data->v4l2_dev);
 mutex_destroy(&data->lock);
 mutex_destroy(&data->queue_lock);
 regmap_exit(data->regmap);
 kfree(data);
}
