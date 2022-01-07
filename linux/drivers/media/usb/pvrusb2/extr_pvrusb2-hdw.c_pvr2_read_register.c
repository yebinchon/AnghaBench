
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pvr2_hdw {int* cmd_buffer; int ctl_lock; } ;


 int FX2CMD_REG_READ ;
 int LOCK_GIVE (int ) ;
 int LOCK_TAKE (int ) ;
 int PVR2_COMPOSE_LE (int*,int ) ;
 int pvr2_send_request (struct pvr2_hdw*,int*,int,int*,int) ;

__attribute__((used)) static int pvr2_read_register(struct pvr2_hdw *hdw, u16 reg, u32 *data)
{
 int ret = 0;

 LOCK_TAKE(hdw->ctl_lock);

 hdw->cmd_buffer[0] = FX2CMD_REG_READ;
 hdw->cmd_buffer[1] = 0;
 hdw->cmd_buffer[2] = 0;
 hdw->cmd_buffer[3] = 0;
 hdw->cmd_buffer[4] = 0;
 hdw->cmd_buffer[5] = 0;
 hdw->cmd_buffer[6] = (reg >> 8) & 0xff;
 hdw->cmd_buffer[7] = reg & 0xff;

 ret |= pvr2_send_request(hdw, hdw->cmd_buffer, 8, hdw->cmd_buffer, 4);
 *data = PVR2_COMPOSE_LE(hdw->cmd_buffer,0);

 LOCK_GIVE(hdw->ctl_lock);

 return ret;
}
