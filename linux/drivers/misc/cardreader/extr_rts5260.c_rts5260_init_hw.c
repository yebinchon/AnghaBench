
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int flags; } ;


 int AUX_CLK_ACTIVE_SEL_MASK ;
 int CLK_PM_EN ;
 int CMD_TIMEOUT_DEF ;
 int L1SUB_CONFIG1 ;
 int L1SUB_CONFIG3 ;
 int MAC_CKSW_DONE ;
 int OBFF_CFG ;
 int OBFF_DISABLE ;
 int OBFF_EN_MASK ;
 int PCR_REVERSE_SOCKET ;
 int PETXCFG ;
 int PM_CLK_FORCE_CTL ;
 int PWD_SUSPEND_EN ;
 int PWD_SUSPND_EN ;
 int PWR_GATE_CTRL ;
 int PWR_GATE_EN ;
 int RBCTL ;
 int REG_VREF ;
 int U_AUTO_DMA_DISABLE ;
 int U_AUTO_DMA_EN_MASK ;
 int WRITE_REG_CMD ;
 int rtsx_pci_add_cmd (struct rtsx_pcr*,int ,int ,int,int) ;
 int rtsx_pci_init_cmd (struct rtsx_pcr*) ;
 int rtsx_pci_init_ocp (struct rtsx_pcr*) ;
 int rtsx_pci_send_cmd (struct rtsx_pcr*,int ) ;

__attribute__((used)) static int rts5260_init_hw(struct rtsx_pcr *pcr)
{
 int err;

 rtsx_pci_init_cmd(pcr);

 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, L1SUB_CONFIG1,
    AUX_CLK_ACTIVE_SEL_MASK, MAC_CKSW_DONE);

 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, L1SUB_CONFIG3, 0xFF, 0x00);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, PM_CLK_FORCE_CTL,
    CLK_PM_EN, CLK_PM_EN);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, PWD_SUSPEND_EN, 0xFF, 0xFF);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, PWR_GATE_CTRL,
    PWR_GATE_EN, PWR_GATE_EN);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, REG_VREF,
    PWD_SUSPND_EN, PWD_SUSPND_EN);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, RBCTL,
    U_AUTO_DMA_EN_MASK, U_AUTO_DMA_DISABLE);

 if (pcr->flags & PCR_REVERSE_SOCKET)
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, PETXCFG, 0xB0, 0xB0);
 else
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, PETXCFG, 0xB0, 0x80);

 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, OBFF_CFG,
    OBFF_EN_MASK, OBFF_DISABLE);

 err = rtsx_pci_send_cmd(pcr, CMD_TIMEOUT_DEF);
 if (err < 0)
  return err;

 rtsx_pci_init_ocp(pcr);

 return 0;
}
