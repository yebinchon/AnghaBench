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
struct mmc_command {int flags; int /*<<< orphan*/  opcode; int /*<<< orphan*/  arg; } ;
struct mmc_card {int /*<<< orphan*/  host; } ;
typedef  int /*<<< orphan*/  io_cmd ;

/* Variables and functions */
 int MMC_CMD_AC ; 
 int MMC_RSP_R5 ; 
 int /*<<< orphan*/  SD_IO_RW_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,unsigned int,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_command*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct mmc_command*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mmc_card *card,
					   unsigned int address,
					   unsigned char byte)
{
	struct mmc_command io_cmd;

	FUNC1(&io_cmd, 0, sizeof(io_cmd));
	FUNC0(&io_cmd.arg, 1, 0, address, byte);
	io_cmd.opcode = SD_IO_RW_DIRECT;
	io_cmd.flags = MMC_RSP_R5 | MMC_CMD_AC;

	return FUNC2(card->host, &io_cmd, 0);
}