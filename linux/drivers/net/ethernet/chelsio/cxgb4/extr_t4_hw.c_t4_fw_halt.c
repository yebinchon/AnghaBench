
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_reset_cmd {void* halt_pkd; void* val; } ;
struct adapter {int dummy; } ;
typedef int c ;


 int CIM_BOOT_CFG_A ;
 int FW_RESET_CMD_HALT_F ;
 int INIT_CMD (struct fw_reset_cmd,int ,int ) ;
 int PCIE_FW_A ;
 int PCIE_FW_HALT_F ;
 unsigned int PCIE_FW_MASTER_M ;
 int PIORSTMODE_F ;
 int PIORST_F ;
 int RESET ;
 int UPCRST_F ;
 int WRITE ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_reset_cmd*,int ,int) ;
 int t4_set_reg_field (struct adapter*,int ,int ,int ) ;
 int t4_wr_mbox (struct adapter*,unsigned int,struct fw_reset_cmd*,int,int *) ;

__attribute__((used)) static int t4_fw_halt(struct adapter *adap, unsigned int mbox, int force)
{
 int ret = 0;





 if (mbox <= PCIE_FW_MASTER_M) {
  struct fw_reset_cmd c;

  memset(&c, 0, sizeof(c));
  INIT_CMD(c, RESET, WRITE);
  c.val = cpu_to_be32(PIORST_F | PIORSTMODE_F);
  c.halt_pkd = cpu_to_be32(FW_RESET_CMD_HALT_F);
  ret = t4_wr_mbox(adap, mbox, &c, sizeof(c), ((void*)0));
 }
 if (ret == 0 || force) {
  t4_set_reg_field(adap, CIM_BOOT_CFG_A, UPCRST_F, UPCRST_F);
  t4_set_reg_field(adap, PCIE_FW_A, PCIE_FW_HALT_F,
     PCIE_FW_HALT_F);
 }





 return ret;
}
