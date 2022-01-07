
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct z8530_channel {int dummy; } ;


 int ERR_RES ;
 int R0 ;
 int RES_EXT_INT ;
 int RES_H_IUS ;
 int TxEOM ;
 int read_zsreg (struct z8530_channel*,int ) ;
 int write_zsctrl (struct z8530_channel*,int ) ;

__attribute__((used)) static void z8530_status_clear(struct z8530_channel *chan)
{
 u8 status=read_zsreg(chan, R0);
 if(status&TxEOM)
  write_zsctrl(chan, ERR_RES);
 write_zsctrl(chan, RES_EXT_INT);
 write_zsctrl(chan, RES_H_IUS);
}
