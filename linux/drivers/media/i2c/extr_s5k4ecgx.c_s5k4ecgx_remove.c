
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int entity; } ;
struct s5k4ecgx {int handler; int lock; } ;
struct i2c_client {int dummy; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 int s5k4ecgx_free_gpios (struct s5k4ecgx*) ;
 struct s5k4ecgx* to_s5k4ecgx (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int s5k4ecgx_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct s5k4ecgx *priv = to_s5k4ecgx(sd);

 mutex_destroy(&priv->lock);
 s5k4ecgx_free_gpios(priv);
 v4l2_device_unregister_subdev(sd);
 v4l2_ctrl_handler_free(&priv->handler);
 media_entity_cleanup(&sd->entity);

 return 0;
}
