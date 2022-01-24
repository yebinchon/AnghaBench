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
typedef  int /*<<< orphan*/  u32 ;
struct pvr2_hdw {unsigned int* cmd_buffer; } ;

/* Variables and functions */
 unsigned int FX2CMD_MEM_WRITE_DWORD ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*,unsigned int,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct pvr2_hdw*,unsigned int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pvr2_hdw *hdw,
				    unsigned int offs,
				    const u32 *data, unsigned int dlen)
{
	unsigned int idx,addr;
	unsigned int bAddr;
	int ret;
	unsigned int chunkCnt;

	/*

	Format: First byte must be 0x01.  Remaining 32 bit words are
	spread out into chunks of 7 bytes each, with the first 4 bytes
	being the data word (little endian), and the next 3 bytes
	being the address where that data word is to be written (big
	endian).  Repeat request for additional words, with offset
	adjusted accordingly.

	*/
	while (dlen) {
		chunkCnt = 8;
		if (chunkCnt > dlen) chunkCnt = dlen;
		FUNC1(hdw->cmd_buffer,0,sizeof(hdw->cmd_buffer));
		bAddr = 0;
		hdw->cmd_buffer[bAddr++] = FX2CMD_MEM_WRITE_DWORD;
		for (idx = 0; idx < chunkCnt; idx++) {
			addr = idx + offs;
			hdw->cmd_buffer[bAddr+6] = (addr & 0xffu);
			hdw->cmd_buffer[bAddr+5] = ((addr>>8) & 0xffu);
			hdw->cmd_buffer[bAddr+4] = ((addr>>16) & 0xffu);
			FUNC0(hdw->cmd_buffer, bAddr,data[idx]);
			bAddr += 7;
		}
		ret = FUNC2(hdw,
					hdw->cmd_buffer,1+(chunkCnt*7),
					NULL,0);
		if (ret) return ret;
		data += chunkCnt;
		dlen -= chunkCnt;
		offs += chunkCnt;
	}

	return 0;
}