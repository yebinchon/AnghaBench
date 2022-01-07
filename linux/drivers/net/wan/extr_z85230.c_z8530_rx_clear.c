
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct z8530_channel {int dummy; } ;


 int END_FR ;
 int ERR_RES ;
 int R1 ;
 int RES_H_IUS ;
 int RES_Rx_CRC ;
 int read_zsdata (struct z8530_channel*) ;
 int read_zsreg (struct z8530_channel*,int ) ;
 int write_zsctrl (struct z8530_channel*,int ) ;

__attribute__((used)) static void z8530_rx_clear(struct z8530_channel *c)
{



 u8 stat;

 read_zsdata(c);
 stat=read_zsreg(c, R1);

 if(stat&END_FR)
  write_zsctrl(c, RES_Rx_CRC);



 write_zsctrl(c, ERR_RES);
 write_zsctrl(c, RES_H_IUS);
}
