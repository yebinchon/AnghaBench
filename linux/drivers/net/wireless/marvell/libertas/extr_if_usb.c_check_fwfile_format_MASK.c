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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct fwheader {int /*<<< orphan*/  datalength; int /*<<< orphan*/  dnldcmd; } ;

/* Variables and functions */
#define  FW_HAS_DATA_TO_RECV 129 
#define  FW_HAS_LAST_BLOCK 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(const uint8_t *data, uint32_t totlen)
{
	uint32_t bincmd, exit;
	uint32_t blksize, offset, len;
	int ret;

	ret = 1;
	exit = len = 0;

	do {
		struct fwheader *fwh = (void *)data;

		bincmd = FUNC1(fwh->dnldcmd);
		blksize = FUNC1(fwh->datalength);
		switch (bincmd) {
		case FW_HAS_DATA_TO_RECV:
			offset = sizeof(struct fwheader) + blksize;
			data += offset;
			len += offset;
			if (len >= totlen)
				exit = 1;
			break;
		case FW_HAS_LAST_BLOCK:
			exit = 1;
			ret = 0;
			break;
		default:
			exit = 1;
			break;
		}
	} while (!exit);

	if (ret)
		FUNC2("firmware file format check FAIL\n");
	else
		FUNC0("firmware file format check PASS\n");

	return ret;
}