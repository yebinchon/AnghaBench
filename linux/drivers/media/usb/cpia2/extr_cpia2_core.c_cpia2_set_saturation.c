
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camera_data {int dummy; } ;


 int CPIA2_CMD_SET_VP_SATURATION ;
 int DBG (char*,unsigned char,unsigned char) ;
 int TRANSFER_WRITE ;
 int cpia2_do_command (struct camera_data*,int ,int ,unsigned char) ;

void cpia2_set_saturation(struct camera_data *cam, unsigned char value)
{
 DBG("Setting saturation to %d (0x%0x)\n", value, value);
 cpia2_do_command(cam,CPIA2_CMD_SET_VP_SATURATION, TRANSFER_WRITE,value);
}
