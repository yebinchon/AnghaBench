#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_2__ {int flash_size; } ;
struct bnx2x {TYPE_1__ common; } ;

/* Variables and functions */
 int BNX2X_MSG_ETHTOOL ; 
 int BNX2X_MSG_NVM ; 
 int BNX2X_NVRAM_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 int EINVAL ; 
 int MCPR_NVM_COMMAND_FIRST ; 
 int MCPR_NVM_COMMAND_LAST ; 
 int FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int FUNC4 (struct bnx2x*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct bnx2x*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct bnx2x *bp, u32 offset, u8 *data_buf,
			     int buf_size)
{
	int rc;
	u32 cmd_flags;
	u32 val;
	u32 written_so_far;

	if (buf_size == 1)	/* ethtool */
		return FUNC4(bp, offset, data_buf, buf_size);

	if ((offset & 0x03) || (buf_size & 0x03) || (buf_size == 0)) {
		FUNC0(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM,
		   "Invalid parameter: offset 0x%x  buf_size 0x%x\n",
		   offset, buf_size);
		return -EINVAL;
	}

	if (offset + buf_size > bp->common.flash_size) {
		FUNC0(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM,
		   "Invalid parameter: offset (0x%x) + buf_size (0x%x) > flash_size (0x%x)\n",
		   offset, buf_size, bp->common.flash_size);
		return -EINVAL;
	}

	/* request access to nvram interface */
	rc = FUNC1(bp);
	if (rc)
		return rc;

	/* enable access to nvram interface */
	FUNC3(bp);

	written_so_far = 0;
	cmd_flags = MCPR_NVM_COMMAND_FIRST;
	while ((written_so_far < buf_size) && (rc == 0)) {
		if (written_so_far == (buf_size - sizeof(u32)))
			cmd_flags |= MCPR_NVM_COMMAND_LAST;
		else if (((offset + 4) % BNX2X_NVRAM_PAGE_SIZE) == 0)
			cmd_flags |= MCPR_NVM_COMMAND_LAST;
		else if ((offset % BNX2X_NVRAM_PAGE_SIZE) == 0)
			cmd_flags |= MCPR_NVM_COMMAND_FIRST;

		FUNC7(&val, data_buf, 4);

		/* Notice unlike bnx2x_nvram_read_dword() this will not
		 * change val using be32_to_cpu(), which causes data to flip
		 * if the eeprom is read and then written back. This is due
		 * to tools utilizing this functionality that would break
		 * if this would be resolved.
		 */
		rc = FUNC5(bp, offset, val, cmd_flags);

		/* advance to the next dword */
		offset += sizeof(u32);
		data_buf += sizeof(u32);
		written_so_far += sizeof(u32);

		/* At end of each 4Kb page, release nvram lock to allow MFW
		 * chance to take it for its own use.
		 */
		if ((cmd_flags & MCPR_NVM_COMMAND_LAST) &&
		    (written_so_far < buf_size)) {
			FUNC0(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM,
			   "Releasing NVM lock after offset 0x%x\n",
			   (u32)(offset - sizeof(u32)));
			FUNC6(bp);
			FUNC8(1000, 2000);
			rc = FUNC1(bp);
			if (rc)
				return rc;
		}

		cmd_flags = 0;
	}

	/* disable access to nvram interface */
	FUNC2(bp);
	FUNC6(bp);

	return rc;
}