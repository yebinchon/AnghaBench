
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camera_data {int dummy; } ;


 int CPIA2_CMD_GET_USER_EFFECTS ;
 int CPIA2_CMD_GET_VC_MP_GPIO_DATA ;
 int CPIA2_CMD_GET_VC_MP_GPIO_DIRECTION ;
 int TRANSFER_READ ;
 int cpia2_do_command (struct camera_data*,int ,int ,int ) ;

void cpia2_save_camera_state(struct camera_data *cam)
{
 cpia2_do_command(cam, CPIA2_CMD_GET_USER_EFFECTS, TRANSFER_READ, 0);
 cpia2_do_command(cam, CPIA2_CMD_GET_VC_MP_GPIO_DIRECTION, TRANSFER_READ,
    0);
 cpia2_do_command(cam, CPIA2_CMD_GET_VC_MP_GPIO_DATA, TRANSFER_READ, 0);

}
