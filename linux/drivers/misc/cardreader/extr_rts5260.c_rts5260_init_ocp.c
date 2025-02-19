
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int ocp_glitch; } ;
struct rtsx_cr_option {int sd_800mA_ocp_thd; scalar_t__ ocp_en; } ;
struct rtsx_pcr {TYPE_1__ hw_param; struct rtsx_cr_option option; } ;


 int REG_OCPGLITCH ;
 int RTS5260_DV331812_CFG ;
 int RTS5260_DV331812_OCP_THD_270 ;
 int RTS5260_DV331812_OCP_THD_MASK ;
 int RTS5260_DVCC_CTRL ;
 int RTS5260_DVCC_OCP_CL_EN ;
 int RTS5260_DVCC_OCP_EN ;
 int RTS5260_DVCC_OCP_THD_MASK ;
 int SD_OCP_GLITCH_MASK ;
 int rtsx_pci_enable_ocp (struct rtsx_pcr*) ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int,int) ;

__attribute__((used)) static void rts5260_init_ocp(struct rtsx_pcr *pcr)
{
 struct rtsx_cr_option *option = &pcr->option;

 if (option->ocp_en) {
  u8 mask, val;


  rtsx_pci_write_register(pcr, RTS5260_DVCC_CTRL,
    RTS5260_DVCC_OCP_THD_MASK,
    option->sd_800mA_ocp_thd);

  rtsx_pci_write_register(pcr, RTS5260_DV331812_CFG,
    RTS5260_DV331812_OCP_THD_MASK,
    RTS5260_DV331812_OCP_THD_270);

  mask = SD_OCP_GLITCH_MASK;
  val = pcr->hw_param.ocp_glitch;
  rtsx_pci_write_register(pcr, REG_OCPGLITCH, mask, val);
  rtsx_pci_write_register(pcr, RTS5260_DVCC_CTRL,
     RTS5260_DVCC_OCP_EN |
     RTS5260_DVCC_OCP_CL_EN,
     RTS5260_DVCC_OCP_EN |
     RTS5260_DVCC_OCP_CL_EN);

  rtsx_pci_enable_ocp(pcr);
 } else {
  rtsx_pci_write_register(pcr, RTS5260_DVCC_CTRL,
     RTS5260_DVCC_OCP_EN |
     RTS5260_DVCC_OCP_CL_EN, 0);
 }
}
