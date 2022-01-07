
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int entity; } ;
struct TYPE_2__ {int handler; } ;
struct stimx274 {int lock; TYPE_1__ ctrls; } ;
struct i2c_client {int dummy; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int imx274_stop ;
 int imx274_write_table (struct stimx274*,int ) ;
 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 struct stimx274* to_imx274 (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static int imx274_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct stimx274 *imx274 = to_imx274(sd);


 imx274_write_table(imx274, imx274_stop);

 v4l2_async_unregister_subdev(sd);
 v4l2_ctrl_handler_free(&imx274->ctrls.handler);
 media_entity_cleanup(&sd->entity);
 mutex_destroy(&imx274->lock);
 return 0;
}
