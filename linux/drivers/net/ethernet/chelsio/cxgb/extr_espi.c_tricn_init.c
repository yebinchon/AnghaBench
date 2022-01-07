
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ regs; int name; } ;
typedef TYPE_1__ adapter_t ;


 scalar_t__ A_ESPI_RX_RESET ;
 int F_ESPI_RX_CORE_RST ;
 int F_ESPI_RX_LNK_RST ;
 int F_RX_CLK_STATUS ;
 int TRICN_CNFG ;
 int pr_err (char*,int ) ;
 int readl (scalar_t__) ;
 int tricn_write (TYPE_1__*,int ,int,int,int ,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int tricn_init(adapter_t *adapter)
{
 int i, sme = 1;

 if (!(readl(adapter->regs + A_ESPI_RX_RESET) & F_RX_CLK_STATUS)) {
  pr_err("%s: ESPI clock not ready\n", adapter->name);
  return -1;
 }

 writel(F_ESPI_RX_CORE_RST, adapter->regs + A_ESPI_RX_RESET);

 if (sme) {
  tricn_write(adapter, 0, 0, 0, TRICN_CNFG, 0x81);
  tricn_write(adapter, 0, 1, 0, TRICN_CNFG, 0x81);
  tricn_write(adapter, 0, 2, 0, TRICN_CNFG, 0x81);
 }
 for (i = 1; i <= 8; i++)
  tricn_write(adapter, 0, 0, i, TRICN_CNFG, 0xf1);
 for (i = 1; i <= 2; i++)
  tricn_write(adapter, 0, 1, i, TRICN_CNFG, 0xf1);
 for (i = 1; i <= 3; i++)
  tricn_write(adapter, 0, 2, i, TRICN_CNFG, 0xe1);
 tricn_write(adapter, 0, 2, 4, TRICN_CNFG, 0xf1);
 tricn_write(adapter, 0, 2, 5, TRICN_CNFG, 0xe1);
 tricn_write(adapter, 0, 2, 6, TRICN_CNFG, 0xf1);
 tricn_write(adapter, 0, 2, 7, TRICN_CNFG, 0x80);
 tricn_write(adapter, 0, 2, 8, TRICN_CNFG, 0xf1);

 writel(F_ESPI_RX_CORE_RST | F_ESPI_RX_LNK_RST,
        adapter->regs + A_ESPI_RX_RESET);

 return 0;
}
