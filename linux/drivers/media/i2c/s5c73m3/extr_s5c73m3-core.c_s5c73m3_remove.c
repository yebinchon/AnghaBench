
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int entity; int ctrl_handler; } ;
struct s5c73m3 {struct v4l2_subdev sensor_sd; } ;
struct i2c_client {int dummy; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 struct s5c73m3* oif_sd_to_s5c73m3 (struct v4l2_subdev*) ;
 int s5c73m3_unregister_spi_driver (struct s5c73m3*) ;
 int v4l2_async_unregister_subdev (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int ) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int s5c73m3_remove(struct i2c_client *client)
{
 struct v4l2_subdev *oif_sd = i2c_get_clientdata(client);
 struct s5c73m3 *state = oif_sd_to_s5c73m3(oif_sd);
 struct v4l2_subdev *sensor_sd = &state->sensor_sd;

 v4l2_async_unregister_subdev(oif_sd);

 v4l2_ctrl_handler_free(oif_sd->ctrl_handler);
 media_entity_cleanup(&oif_sd->entity);

 v4l2_device_unregister_subdev(sensor_sd);
 media_entity_cleanup(&sensor_sd->entity);

 s5c73m3_unregister_spi_driver(state);

 return 0;
}
