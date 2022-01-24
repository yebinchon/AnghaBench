#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct ixgbe_hw {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  checksum; int /*<<< orphan*/  buf_lenl; scalar_t__ buf_lenh; int /*<<< orphan*/  cmd; } ;
struct TYPE_4__ {TYPE_1__ req; } ;
struct ixgbe_hic_write_shadow_ram {int data; int /*<<< orphan*/  address; int /*<<< orphan*/  length; TYPE_2__ hdr; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FW_DEFAULT_CHECKSUM ; 
 int /*<<< orphan*/  FW_WRITE_SHADOW_RAM_CMD ; 
 int /*<<< orphan*/  FW_WRITE_SHADOW_RAM_LEN ; 
 int /*<<< orphan*/  IXGBE_HI_COMMAND_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,struct ixgbe_hic_write_shadow_ram*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static s32 FUNC3(struct ixgbe_hw *hw, u16 offset,
					   u16 data)
{
	s32 status;
	struct ixgbe_hic_write_shadow_ram buffer;

	buffer.hdr.req.cmd = FW_WRITE_SHADOW_RAM_CMD;
	buffer.hdr.req.buf_lenh = 0;
	buffer.hdr.req.buf_lenl = FW_WRITE_SHADOW_RAM_LEN;
	buffer.hdr.req.checksum = FW_DEFAULT_CHECKSUM;

	/* one word */
	buffer.length = FUNC0(sizeof(u16));
	buffer.data = data;
	buffer.address = FUNC1(offset * 2);

	status = FUNC2(hw, &buffer, sizeof(buffer),
					      IXGBE_HI_COMMAND_TIMEOUT, false);
	return status;
}