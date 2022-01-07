
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fw_hello_cmd {int err_to_clearinit; } ;
struct adapter {int dummy; } ;
typedef enum dev_state { ____Placeholder_dev_state } dev_state ;
typedef enum dev_master { ____Placeholder_dev_master } dev_master ;
typedef int c ;


 int DEV_STATE_ERR ;
 int DEV_STATE_INIT ;
 int DEV_STATE_UNINIT ;
 int EBUSY ;
 int ETIMEDOUT ;
 int FW_CMD_HELLO_RETRIES ;
 int FW_CMD_HELLO_TIMEOUT ;
 int FW_HELLO_CMD_CLEARINIT_F ;
 int FW_HELLO_CMD_ERR_F ;
 int FW_HELLO_CMD_INIT_F ;
 int FW_HELLO_CMD_MASTERDIS_V (int) ;
 int FW_HELLO_CMD_MASTERFORCE_V (int) ;
 int FW_HELLO_CMD_MBASYNCNOT_V (unsigned int) ;
 unsigned int FW_HELLO_CMD_MBMASTER_G (int) ;
 unsigned int FW_HELLO_CMD_MBMASTER_M ;
 int FW_HELLO_CMD_MBMASTER_V (unsigned int) ;
 int FW_HELLO_CMD_STAGE_V (int ) ;
 int HELLO ;
 int INIT_CMD (struct fw_hello_cmd,int ,int ) ;
 int MASTER_CANT ;
 int MASTER_MUST ;
 int PCIE_FW_A ;
 int PCIE_FW_ERR_F ;
 int PCIE_FW_INIT_F ;
 unsigned int PCIE_FW_MASTER_G (int) ;
 unsigned int PCIE_FW_MASTER_M ;
 int PCIE_FW_MASTER_VLD_F ;
 int WRITE ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int fw_hello_cmd_stage_os ;
 int memset (struct fw_hello_cmd*,int ,int) ;
 int msleep (int) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_report_fw_error (struct adapter*) ;
 int t4_wr_mbox (struct adapter*,unsigned int,struct fw_hello_cmd*,int,struct fw_hello_cmd*) ;

int t4_fw_hello(struct adapter *adap, unsigned int mbox, unsigned int evt_mbox,
  enum dev_master master, enum dev_state *state)
{
 int ret;
 struct fw_hello_cmd c;
 u32 v;
 unsigned int master_mbox;
 int retries = FW_CMD_HELLO_RETRIES;

retry:
 memset(&c, 0, sizeof(c));
 INIT_CMD(c, HELLO, WRITE);
 c.err_to_clearinit = cpu_to_be32(
  FW_HELLO_CMD_MASTERDIS_V(master == MASTER_CANT) |
  FW_HELLO_CMD_MASTERFORCE_V(master == MASTER_MUST) |
  FW_HELLO_CMD_MBMASTER_V(master == MASTER_MUST ?
     mbox : FW_HELLO_CMD_MBMASTER_M) |
  FW_HELLO_CMD_MBASYNCNOT_V(evt_mbox) |
  FW_HELLO_CMD_STAGE_V(fw_hello_cmd_stage_os) |
  FW_HELLO_CMD_CLEARINIT_F);
 ret = t4_wr_mbox(adap, mbox, &c, sizeof(c), &c);
 if (ret < 0) {
  if ((ret == -EBUSY || ret == -ETIMEDOUT) && retries-- > 0)
   goto retry;
  if (t4_read_reg(adap, PCIE_FW_A) & PCIE_FW_ERR_F)
   t4_report_fw_error(adap);
  return ret;
 }

 v = be32_to_cpu(c.err_to_clearinit);
 master_mbox = FW_HELLO_CMD_MBMASTER_G(v);
 if (state) {
  if (v & FW_HELLO_CMD_ERR_F)
   *state = DEV_STATE_ERR;
  else if (v & FW_HELLO_CMD_INIT_F)
   *state = DEV_STATE_INIT;
  else
   *state = DEV_STATE_UNINIT;
 }
 if ((v & (FW_HELLO_CMD_ERR_F|FW_HELLO_CMD_INIT_F)) == 0 &&
     master_mbox != mbox) {
  int waiting = FW_CMD_HELLO_TIMEOUT;
  for (;;) {
   u32 pcie_fw;

   msleep(50);
   waiting -= 50;







   pcie_fw = t4_read_reg(adap, PCIE_FW_A);
   if (!(pcie_fw & (PCIE_FW_ERR_F|PCIE_FW_INIT_F))) {
    if (waiting <= 0) {
     if (retries-- > 0)
      goto retry;

     return -ETIMEDOUT;
    }
    continue;
   }





   if (state) {
    if (pcie_fw & PCIE_FW_ERR_F)
     *state = DEV_STATE_ERR;
    else if (pcie_fw & PCIE_FW_INIT_F)
     *state = DEV_STATE_INIT;
   }






   if (master_mbox == PCIE_FW_MASTER_M &&
       (pcie_fw & PCIE_FW_MASTER_VLD_F))
    master_mbox = PCIE_FW_MASTER_G(pcie_fw);
   break;
  }
 }

 return master_mbox;
}
