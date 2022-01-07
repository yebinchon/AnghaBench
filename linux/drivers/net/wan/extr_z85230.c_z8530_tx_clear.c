
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z8530_channel {int dummy; } ;


 int RES_H_IUS ;
 int RES_Tx_P ;
 int write_zsctrl (struct z8530_channel*,int ) ;

__attribute__((used)) static void z8530_tx_clear(struct z8530_channel *c)
{
 write_zsctrl(c, RES_Tx_P);
 write_zsctrl(c, RES_H_IUS);
}
