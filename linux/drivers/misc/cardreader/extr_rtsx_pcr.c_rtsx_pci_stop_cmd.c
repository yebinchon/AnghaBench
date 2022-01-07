
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtsx_pcr {TYPE_1__* ops; } ;
struct TYPE_2__ {void (* stop_cmd ) (struct rtsx_pcr*) ;} ;


 int DMACTL ;
 int RBCTL ;
 int RTSX_HCBCTLR ;
 int RTSX_HDBCTLR ;
 int STOP_CMD ;
 int STOP_DMA ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int,int) ;
 int rtsx_pci_writel (struct rtsx_pcr*,int ,int ) ;
 void stub1 (struct rtsx_pcr*) ;

void rtsx_pci_stop_cmd(struct rtsx_pcr *pcr)
{
 if (pcr->ops->stop_cmd)
  return pcr->ops->stop_cmd(pcr);

 rtsx_pci_writel(pcr, RTSX_HCBCTLR, STOP_CMD);
 rtsx_pci_writel(pcr, RTSX_HDBCTLR, STOP_DMA);

 rtsx_pci_write_register(pcr, DMACTL, 0x80, 0x80);
 rtsx_pci_write_register(pcr, RBCTL, 0x80, 0x80);
}
