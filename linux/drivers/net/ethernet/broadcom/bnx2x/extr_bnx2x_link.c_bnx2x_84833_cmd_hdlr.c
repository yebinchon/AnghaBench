
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*) ;
 int EINVAL ;
 scalar_t__ MDIO_848xx_CMD_HDLR_COMMAND ;
 scalar_t__ MDIO_848xx_CMD_HDLR_DATA1 ;
 scalar_t__ MDIO_848xx_CMD_HDLR_STATUS ;
 int MDIO_CTL_DEVAD ;
 int NETIF_MSG_LINK ;
 int PHY84833_MB_PROCESS1 ;
 int PHY84833_MB_PROCESS2 ;
 int PHY84833_MB_PROCESS3 ;
 scalar_t__ PHY84833_STATUS_CMD_CLEAR_COMPLETE ;
 scalar_t__ PHY84833_STATUS_CMD_COMPLETE_ERROR ;
 scalar_t__ PHY84833_STATUS_CMD_COMPLETE_PASS ;
 scalar_t__ PHY84833_STATUS_CMD_OPEN_FOR_CMDS ;
 scalar_t__ PHY84833_STATUS_CMD_OPEN_OVERRIDE ;
 int PHY848xx_CMDHDLR_WAIT ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,scalar_t__,scalar_t__*) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,scalar_t__,scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int bnx2x_84833_cmd_hdlr(struct bnx2x_phy *phy,
    struct link_params *params, u16 fw_cmd,
    u16 cmd_args[], int argc, int process)
{
 int idx;
 u16 val;
 struct bnx2x *bp = params->bp;
 int rc = 0;

 if (process == PHY84833_MB_PROCESS2) {

  bnx2x_cl45_write(bp, phy, MDIO_CTL_DEVAD,
     MDIO_848xx_CMD_HDLR_STATUS,
     PHY84833_STATUS_CMD_OPEN_OVERRIDE);
 }

 for (idx = 0; idx < PHY848xx_CMDHDLR_WAIT; idx++) {
  bnx2x_cl45_read(bp, phy, MDIO_CTL_DEVAD,
    MDIO_848xx_CMD_HDLR_STATUS, &val);
  if (val == PHY84833_STATUS_CMD_OPEN_FOR_CMDS)
   break;
  usleep_range(1000, 2000);
 }
 if (idx >= PHY848xx_CMDHDLR_WAIT) {
  DP(NETIF_MSG_LINK, "FW cmd: FW not ready.\n");



  if (val == PHY84833_STATUS_CMD_COMPLETE_PASS ||
      val == PHY84833_STATUS_CMD_COMPLETE_ERROR) {
   bnx2x_cl45_write(bp, phy, MDIO_CTL_DEVAD,
      MDIO_848xx_CMD_HDLR_STATUS,
      PHY84833_STATUS_CMD_CLEAR_COMPLETE);
  }
  return -EINVAL;
 }
 if (process == PHY84833_MB_PROCESS1 ||
     process == PHY84833_MB_PROCESS2) {

  for (idx = 0; idx < argc; idx++) {
   bnx2x_cl45_write(bp, phy, MDIO_CTL_DEVAD,
      MDIO_848xx_CMD_HDLR_DATA1 + idx,
      cmd_args[idx]);
  }
 }

 bnx2x_cl45_write(bp, phy, MDIO_CTL_DEVAD,
   MDIO_848xx_CMD_HDLR_COMMAND, fw_cmd);
 for (idx = 0; idx < PHY848xx_CMDHDLR_WAIT; idx++) {
  bnx2x_cl45_read(bp, phy, MDIO_CTL_DEVAD,
    MDIO_848xx_CMD_HDLR_STATUS, &val);
  if ((val == PHY84833_STATUS_CMD_COMPLETE_PASS) ||
      (val == PHY84833_STATUS_CMD_COMPLETE_ERROR))
   break;
  usleep_range(1000, 2000);
 }
 if ((idx >= PHY848xx_CMDHDLR_WAIT) ||
     (val == PHY84833_STATUS_CMD_COMPLETE_ERROR)) {
  DP(NETIF_MSG_LINK, "FW cmd failed.\n");
  rc = -EINVAL;
 }
 if (process == PHY84833_MB_PROCESS3 && rc == 0) {

  for (idx = 0; idx < argc; idx++) {
   bnx2x_cl45_read(bp, phy, MDIO_CTL_DEVAD,
     MDIO_848xx_CMD_HDLR_DATA1 + idx,
     &cmd_args[idx]);
  }
 }
 if (val == PHY84833_STATUS_CMD_COMPLETE_ERROR ||
     val == PHY84833_STATUS_CMD_COMPLETE_PASS) {
  bnx2x_cl45_write(bp, phy, MDIO_CTL_DEVAD,
     MDIO_848xx_CMD_HDLR_STATUS,
     PHY84833_STATUS_CMD_CLEAR_COMPLETE);
 }
 return rc;
}
