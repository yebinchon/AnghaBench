
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int entity; } ;
struct tvp514x_decoder {int hdl; TYPE_1__ sd; } ;
struct i2c_client {int dummy; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 struct tvp514x_decoder* to_decoder (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (TYPE_1__*) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static int tvp514x_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct tvp514x_decoder *decoder = to_decoder(sd);

 v4l2_async_unregister_subdev(&decoder->sd);
 media_entity_cleanup(&decoder->sd.entity);
 v4l2_ctrl_handler_free(&decoder->hdl);
 return 0;
}
