
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int checksum; int buf_lenl; scalar_t__ buf_lenh; int cmd; } ;
union ixgbe_hic_hdr2 {TYPE_1__ req; } ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;
typedef int buffer ;


 int FW_DEFAULT_CHECKSUM ;
 int FW_SHADOW_RAM_DUMP_CMD ;
 int FW_SHADOW_RAM_DUMP_LEN ;
 int IXGBE_HI_COMMAND_TIMEOUT ;
 int ixgbe_host_interface_command (struct ixgbe_hw*,union ixgbe_hic_hdr2*,int,int ,int) ;

__attribute__((used)) static s32 ixgbe_update_flash_X550(struct ixgbe_hw *hw)
{
 s32 status = 0;
 union ixgbe_hic_hdr2 buffer;

 buffer.req.cmd = FW_SHADOW_RAM_DUMP_CMD;
 buffer.req.buf_lenh = 0;
 buffer.req.buf_lenl = FW_SHADOW_RAM_DUMP_LEN;
 buffer.req.checksum = FW_DEFAULT_CHECKSUM;

 status = ixgbe_host_interface_command(hw, &buffer, sizeof(buffer),
           IXGBE_HI_COMMAND_TIMEOUT, 0);
 return status;
}
