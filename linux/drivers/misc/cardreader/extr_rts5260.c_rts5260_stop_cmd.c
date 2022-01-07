
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int dummy; } ;


 int RBCTL ;
 int RB_FLUSH ;
 int RTS5260_ADMA3_RST ;
 int RTS5260_DMA_RST ;
 int RTS5260_DMA_RST_CTL_0 ;
 int RTSX_HCBCTLR ;
 int RTSX_HDBCTLR ;
 int STOP_CMD ;
 int STOP_DMA ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int,int) ;
 int rtsx_pci_writel (struct rtsx_pcr*,int ,int ) ;

__attribute__((used)) static void rts5260_stop_cmd(struct rtsx_pcr *pcr)
{
 rtsx_pci_writel(pcr, RTSX_HCBCTLR, STOP_CMD);
 rtsx_pci_writel(pcr, RTSX_HDBCTLR, STOP_DMA);
 rtsx_pci_write_register(pcr, RTS5260_DMA_RST_CTL_0,
    RTS5260_DMA_RST | RTS5260_ADMA3_RST,
    RTS5260_DMA_RST | RTS5260_ADMA3_RST);
 rtsx_pci_write_register(pcr, RBCTL, RB_FLUSH, RB_FLUSH);
}
