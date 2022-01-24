#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct e1000_hw {int dummy; } ;
struct e1000_host_mng_command_header {scalar_t__ checksum; scalar_t__ reserved2; scalar_t__ reserved1; int /*<<< orphan*/  command_length; int /*<<< orphan*/  command_id; } ;
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  hdr ;

/* Variables and functions */
 int E1000_HICR_C ; 
 int /*<<< orphan*/  E1000_MNG_DHCP_TX_PAYLOAD_CMD ; 
 int /*<<< orphan*/  HICR ; 
 scalar_t__ FUNC0 (struct e1000_hw*) ; 
 scalar_t__ FUNC1 (struct e1000_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 scalar_t__ FUNC2 (struct e1000_hw*,struct e1000_host_mng_command_header*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

s32 FUNC5(struct e1000_hw *hw, u8 *buffer, u16 length)
{
	struct e1000_host_mng_command_header hdr;
	s32 ret_val;
	u32 hicr;

	hdr.command_id = E1000_MNG_DHCP_TX_PAYLOAD_CMD;
	hdr.command_length = length;
	hdr.reserved1 = 0;
	hdr.reserved2 = 0;
	hdr.checksum = 0;

	/* Enable the host interface */
	ret_val = FUNC0(hw);
	if (ret_val)
		return ret_val;

	/* Populate the host interface with the contents of "buffer". */
	ret_val = FUNC1(hw, buffer, length,
					  sizeof(hdr), &(hdr.checksum));
	if (ret_val)
		return ret_val;

	/* Write the manageability command header */
	ret_val = FUNC2(hw, &hdr);
	if (ret_val)
		return ret_val;

	/* Tell the ARC a new command is pending. */
	hicr = FUNC3(HICR);
	FUNC4(HICR, hicr | E1000_HICR_C);

	return 0;
}