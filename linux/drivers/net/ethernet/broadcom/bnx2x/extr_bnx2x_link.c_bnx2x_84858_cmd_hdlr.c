
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
 scalar_t__ PHY84858_STATUS_CMD_COMPLETE_ERROR ;
 scalar_t__ PHY84858_STATUS_CMD_COMPLETE_PASS ;
 scalar_t__ PHY84858_STATUS_CMD_IN_PROGRESS ;
 scalar_t__ PHY84858_STATUS_CMD_SYSTEM_BUSY ;
 int PHY848xx_CMDHDLR_WAIT ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,scalar_t__,scalar_t__*) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,scalar_t__,scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int bnx2x_84858_cmd_hdlr(struct bnx2x_phy *phy,
    struct link_params *params,
    u16 fw_cmd,
    u16 cmd_args[], int argc)
{
 int idx;
 u16 val;
 struct bnx2x *bp = params->bp;
 for (idx = 0; idx < PHY848xx_CMDHDLR_WAIT; idx++) {
  bnx2x_cl45_read(bp, phy, MDIO_CTL_DEVAD,
    MDIO_848xx_CMD_HDLR_STATUS, &val);
  if ((val != PHY84858_STATUS_CMD_IN_PROGRESS) &&
      (val != PHY84858_STATUS_CMD_SYSTEM_BUSY))
   break;
  usleep_range(1000, 2000);
 }
 if (idx >= PHY848xx_CMDHDLR_WAIT) {
  DP(NETIF_MSG_LINK, "FW cmd: FW not ready.\n");
  return -EINVAL;
 }





 for (idx = 0; idx < argc; idx++) {
  bnx2x_cl45_write(bp, phy, MDIO_CTL_DEVAD,
     MDIO_848xx_CMD_HDLR_DATA1 + idx,
     cmd_args[idx]);
 }




 bnx2x_cl45_write(bp, phy, MDIO_CTL_DEVAD,
    MDIO_848xx_CMD_HDLR_COMMAND, fw_cmd);






 for (idx = 0; idx < PHY848xx_CMDHDLR_WAIT; idx++) {
  bnx2x_cl45_read(bp, phy, MDIO_CTL_DEVAD,
    MDIO_848xx_CMD_HDLR_STATUS, &val);
  if ((val == PHY84858_STATUS_CMD_COMPLETE_PASS) ||
      (val == PHY84858_STATUS_CMD_COMPLETE_ERROR))
   break;
  usleep_range(1000, 2000);
 }
 if ((idx >= PHY848xx_CMDHDLR_WAIT) ||
     (val == PHY84858_STATUS_CMD_COMPLETE_ERROR)) {
  DP(NETIF_MSG_LINK, "FW cmd failed.\n");
  return -EINVAL;
 }





 for (idx = 0; idx < argc; idx++) {
  bnx2x_cl45_read(bp, phy, MDIO_CTL_DEVAD,
    MDIO_848xx_CMD_HDLR_DATA1 + idx,
    &cmd_args[idx]);
 }

 return 0;
}
