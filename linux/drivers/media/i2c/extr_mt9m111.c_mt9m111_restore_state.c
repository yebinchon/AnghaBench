
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mt9m111 {TYPE_2__* current_mode; TYPE_3__* ctx; int hdl; TYPE_1__* fmt; int height; int width; int rect; int subdev; } ;
struct i2c_client {int dummy; } ;
struct TYPE_6__ {int read_mode; } ;
struct TYPE_5__ {int reg_mask; int reg_val; } ;
struct TYPE_4__ {int code; } ;


 int mt9m111_reg_mask (struct i2c_client*,int ,int ,int ) ;
 int mt9m111_set_context (struct mt9m111*,TYPE_3__*) ;
 int mt9m111_set_pixfmt (struct mt9m111*,int ) ;
 int mt9m111_setup_geometry (struct mt9m111*,int *,int ,int ,int ) ;
 int v4l2_ctrl_handler_setup (int *) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static void mt9m111_restore_state(struct mt9m111 *mt9m111)
{
 struct i2c_client *client = v4l2_get_subdevdata(&mt9m111->subdev);

 mt9m111_set_context(mt9m111, mt9m111->ctx);
 mt9m111_set_pixfmt(mt9m111, mt9m111->fmt->code);
 mt9m111_setup_geometry(mt9m111, &mt9m111->rect,
   mt9m111->width, mt9m111->height, mt9m111->fmt->code);
 v4l2_ctrl_handler_setup(&mt9m111->hdl);
 mt9m111_reg_mask(client, mt9m111->ctx->read_mode,
    mt9m111->current_mode->reg_val,
    mt9m111->current_mode->reg_mask);
}
