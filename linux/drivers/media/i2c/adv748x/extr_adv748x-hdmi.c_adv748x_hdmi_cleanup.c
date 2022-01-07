
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct adv748x_hdmi {int ctrl_hdl; TYPE_1__ sd; } ;


 int media_entity_cleanup (int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister_subdev (TYPE_1__*) ;

void adv748x_hdmi_cleanup(struct adv748x_hdmi *hdmi)
{
 v4l2_device_unregister_subdev(&hdmi->sd);
 media_entity_cleanup(&hdmi->sd.entity);
 v4l2_ctrl_handler_free(&hdmi->ctrl_hdl);
}
