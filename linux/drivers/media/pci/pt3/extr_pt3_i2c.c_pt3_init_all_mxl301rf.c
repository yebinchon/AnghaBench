
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt3_board {int dummy; } ;


 int PT3_CMD_ADDR_INIT_TUNER ;
 int send_i2c_cmd (struct pt3_board*,int ) ;
 int usleep_range (int,int) ;

int pt3_init_all_mxl301rf(struct pt3_board *pt3)
{
 usleep_range(1000, 2000);
 return send_i2c_cmd(pt3, PT3_CMD_ADDR_INIT_TUNER);
}
