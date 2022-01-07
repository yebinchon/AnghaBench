
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtsx_pcr {int host_cmds_addr; int ci; } ;


 int RTSX_HCBAR ;
 int RTSX_HCBCTLR ;
 int rtsx_pci_writel (struct rtsx_pcr*,int ,int) ;

void rtsx_pci_send_cmd_no_wait(struct rtsx_pcr *pcr)
{
 u32 val = 1 << 31;

 rtsx_pci_writel(pcr, RTSX_HCBAR, pcr->host_cmds_addr);

 val |= (u32)(pcr->ci * 4) & 0x00FFFFFF;

 val |= 0x40000000;
 rtsx_pci_writel(pcr, RTSX_HCBCTLR, val);
}
