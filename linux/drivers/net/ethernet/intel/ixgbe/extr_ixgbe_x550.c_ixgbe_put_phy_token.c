
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int token_cmd ;
struct TYPE_4__ {int lan_id; } ;
struct ixgbe_hw {TYPE_1__ bus; } ;
struct TYPE_5__ {scalar_t__ ret_status; scalar_t__ cmd_resv; } ;
struct TYPE_6__ {TYPE_2__ cmd_or_resp; int checksum; int buf_len; int cmd; } ;
struct ixgbe_hic_phy_token_req {TYPE_3__ hdr; scalar_t__ pad; int command_type; int port_number; } ;
typedef scalar_t__ s32 ;


 int FW_DEFAULT_CHECKSUM ;
 scalar_t__ FW_PHY_TOKEN_OK ;
 int FW_PHY_TOKEN_REL ;
 int FW_PHY_TOKEN_REQ_CMD ;
 int FW_PHY_TOKEN_REQ_LEN ;
 scalar_t__ IXGBE_ERR_FW_RESP_INVALID ;
 int IXGBE_HI_COMMAND_TIMEOUT ;
 scalar_t__ ixgbe_host_interface_command (struct ixgbe_hw*,struct ixgbe_hic_phy_token_req*,int,int ,int) ;

__attribute__((used)) static s32 ixgbe_put_phy_token(struct ixgbe_hw *hw)
{
 struct ixgbe_hic_phy_token_req token_cmd;
 s32 status;

 token_cmd.hdr.cmd = FW_PHY_TOKEN_REQ_CMD;
 token_cmd.hdr.buf_len = FW_PHY_TOKEN_REQ_LEN;
 token_cmd.hdr.cmd_or_resp.cmd_resv = 0;
 token_cmd.hdr.checksum = FW_DEFAULT_CHECKSUM;
 token_cmd.port_number = hw->bus.lan_id;
 token_cmd.command_type = FW_PHY_TOKEN_REL;
 token_cmd.pad = 0;
 status = ixgbe_host_interface_command(hw, &token_cmd, sizeof(token_cmd),
           IXGBE_HI_COMMAND_TIMEOUT,
           1);
 if (status)
  return status;
 if (token_cmd.hdr.cmd_or_resp.ret_status == FW_PHY_TOKEN_OK)
  return 0;
 return IXGBE_ERR_FW_RESP_INVALID;
}
