
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int* block_data; } ;
struct cpia2_command {int req_mode; int reg_count; int start; TYPE_5__ buffer; int direction; } ;
struct TYPE_8__ {scalar_t__ lowlight_boost; } ;
struct TYPE_7__ {scalar_t__ sensor_flags; } ;
struct TYPE_6__ {scalar_t__ device_type; } ;
struct TYPE_9__ {TYPE_3__ vp_params; TYPE_2__ version; TYPE_1__ pnp_id; } ;
struct camera_data {TYPE_4__ params; } ;


 int CAMERAACCESS_TYPE_BLOCK ;
 int CAMERAACCESS_VP ;
 int CPIA2_CMD_REHASH_VP4 ;
 int CPIA2_VP_RAM_ADDR_H ;
 int CPIA2_VP_RAM_DATA ;
 scalar_t__ CPIA2_VP_SENSOR_FLAGS_500 ;
 scalar_t__ DEVICE_STV_672 ;
 int TRANSFER_WRITE ;
 int cpia2_do_command (struct camera_data*,int ,int ,int) ;
 int cpia2_send_command (struct camera_data*,struct cpia2_command*) ;

__attribute__((used)) static void set_lowlight_boost(struct camera_data *cam)
{
 struct cpia2_command cmd;

 if (cam->params.pnp_id.device_type != DEVICE_STV_672 ||
     cam->params.version.sensor_flags != CPIA2_VP_SENSOR_FLAGS_500)
  return;

 cmd.direction = TRANSFER_WRITE;
 cmd.req_mode = CAMERAACCESS_TYPE_BLOCK | CAMERAACCESS_VP;
 cmd.reg_count = 3;
 cmd.start = CPIA2_VP_RAM_ADDR_H;

 cmd.buffer.block_data[0] = 0;
 cmd.buffer.block_data[1] = 0x59;
 cmd.buffer.block_data[2] = 0;

 cpia2_send_command(cam, &cmd);

 if (cam->params.vp_params.lowlight_boost) {
  cmd.buffer.block_data[0] = 0x02;
 } else {
  cmd.buffer.block_data[0] = 0x06;
 }
 cmd.start = CPIA2_VP_RAM_DATA;
 cmd.reg_count = 1;
 cpia2_send_command(cam, &cmd);


 cpia2_do_command(cam, CPIA2_CMD_REHASH_VP4, TRANSFER_WRITE, 1);
}
