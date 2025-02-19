
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wcn36xx {int dummy; } ;


 int WCN36XX_DXE_INT_MASK_REG ;
 int wcn36xx_dxe_read_register (struct wcn36xx*,int ,int*) ;
 int wcn36xx_dxe_write_register (struct wcn36xx*,int ,int) ;

__attribute__((used)) static int wcn36xx_dxe_enable_ch_int(struct wcn36xx *wcn, u16 wcn_ch)
{
 int reg_data = 0;

 wcn36xx_dxe_read_register(wcn,
      WCN36XX_DXE_INT_MASK_REG,
      &reg_data);

 reg_data |= wcn_ch;

 wcn36xx_dxe_write_register(wcn,
       WCN36XX_DXE_INT_MASK_REG,
       (int)reg_data);
 return 0;
}
