
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx {scalar_t__ dxe_base; } ;


 int WCN36XX_DBG_DXE ;
 int wcn36xx_dbg (int ,char*,int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void wcn36xx_dxe_write_register(struct wcn36xx *wcn, int addr, int data)
{
 wcn36xx_dbg(WCN36XX_DBG_DXE,
      "wcn36xx_dxe_write_register: addr=%x, data=%x\n",
      addr, data);

 writel(data, wcn->dxe_base + addr);
}
