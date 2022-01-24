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
struct bnx2 {TYPE_1__* flash_info; } ;
struct TYPE_2__ {int flags; int page_size; } ;

/* Variables and functions */
 int BNX2_NVM_COMMAND_FIRST ; 
 int BNX2_NVM_COMMAND_LAST ; 
 int BNX2_NV_BUFFERED ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2*) ; 
 int FUNC4 (struct bnx2*) ; 
 int FUNC5 (struct bnx2*,int) ; 
 int FUNC6 (struct bnx2*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (struct bnx2*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (struct bnx2*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC13(struct bnx2 *bp, u32 offset, u8 *data_buf,
		int buf_size)
{
	u32 written, offset32, len32;
	u8 *buf, start[4], end[4], *align_buf = NULL, *flash_buffer = NULL;
	int rc = 0;
	int align_start, align_end;

	buf = data_buf;
	offset32 = offset;
	len32 = buf_size;
	align_start = align_end = 0;

	if ((align_start = (offset32 & 3))) {
		offset32 &= ~3;
		len32 += align_start;
		if (len32 < 4)
			len32 = 4;
		if ((rc = FUNC6(bp, offset32, start, 4)))
			return rc;
	}

	if (len32 & 3) {
		align_end = 4 - (len32 & 3);
		len32 += align_end;
		if ((rc = FUNC6(bp, offset32 + len32 - 4, end, 4)))
			return rc;
	}

	if (align_start || align_end) {
		align_buf = FUNC11(len32, GFP_KERNEL);
		if (!align_buf)
			return -ENOMEM;
		if (align_start) {
			FUNC12(align_buf, start, 4);
		}
		if (align_end) {
			FUNC12(align_buf + len32 - 4, end, 4);
		}
		FUNC12(align_buf + align_start, data_buf, buf_size);
		buf = align_buf;
	}

	if (!(bp->flash_info->flags & BNX2_NV_BUFFERED)) {
		flash_buffer = FUNC11(264, GFP_KERNEL);
		if (!flash_buffer) {
			rc = -ENOMEM;
			goto nvram_write_end;
		}
	}

	written = 0;
	while ((written < len32) && (rc == 0)) {
		u32 page_start, page_end, data_start, data_end;
		u32 addr, cmd_flags;
		int i;

	        /* Find the page_start addr */
		page_start = offset32 + written;
		page_start -= (page_start % bp->flash_info->page_size);
		/* Find the page_end addr */
		page_end = page_start + bp->flash_info->page_size;
		/* Find the data_start addr */
		data_start = (written == 0) ? offset32 : page_start;
		/* Find the data_end addr */
		data_end = (page_end > offset32 + len32) ?
			(offset32 + len32) : page_end;

		/* Request access to the flash interface. */
		if ((rc = FUNC0(bp)) != 0)
			goto nvram_write_end;

		/* Enable access to flash interface */
		FUNC3(bp);

		cmd_flags = BNX2_NVM_COMMAND_FIRST;
		if (!(bp->flash_info->flags & BNX2_NV_BUFFERED)) {
			int j;

			/* Read the whole page into the buffer
			 * (non-buffer flash only) */
			for (j = 0; j < bp->flash_info->page_size; j += 4) {
				if (j == (bp->flash_info->page_size - 4)) {
					cmd_flags |= BNX2_NVM_COMMAND_LAST;
				}
				rc = FUNC7(bp,
					page_start + j,
					&flash_buffer[j],
					cmd_flags);

				if (rc)
					goto nvram_write_end;

				cmd_flags = 0;
			}
		}

		/* Enable writes to flash interface (unlock write-protect) */
		if ((rc = FUNC4(bp)) != 0)
			goto nvram_write_end;

		/* Loop to write back the buffer data from page_start to
		 * data_start */
		i = 0;
		if (!(bp->flash_info->flags & BNX2_NV_BUFFERED)) {
			/* Erase the page */
			if ((rc = FUNC5(bp, page_start)) != 0)
				goto nvram_write_end;

			/* Re-enable the write again for the actual write */
			FUNC4(bp);

			for (addr = page_start; addr < data_start;
				addr += 4, i += 4) {

				rc = FUNC8(bp, addr,
					&flash_buffer[i], cmd_flags);

				if (rc != 0)
					goto nvram_write_end;

				cmd_flags = 0;
			}
		}

		/* Loop to write the new data from data_start to data_end */
		for (addr = data_start; addr < data_end; addr += 4, i += 4) {
			if ((addr == page_end - 4) ||
				((bp->flash_info->flags & BNX2_NV_BUFFERED) &&
				 (addr == data_end - 4))) {

				cmd_flags |= BNX2_NVM_COMMAND_LAST;
			}
			rc = FUNC8(bp, addr, buf,
				cmd_flags);

			if (rc != 0)
				goto nvram_write_end;

			cmd_flags = 0;
			buf += 4;
		}

		/* Loop to write back the buffer data from data_end
		 * to page_end */
		if (!(bp->flash_info->flags & BNX2_NV_BUFFERED)) {
			for (addr = data_end; addr < page_end;
				addr += 4, i += 4) {

				if (addr == page_end-4) {
					cmd_flags = BNX2_NVM_COMMAND_LAST;
                		}
				rc = FUNC8(bp, addr,
					&flash_buffer[i], cmd_flags);

				if (rc != 0)
					goto nvram_write_end;

				cmd_flags = 0;
			}
		}

		/* Disable writes to flash interface (lock write-protect) */
		FUNC2(bp);

		/* Disable access to flash interface */
		FUNC1(bp);
		FUNC9(bp);

		/* Increment written */
		written += data_end - data_start;
	}

nvram_write_end:
	FUNC10(flash_buffer);
	FUNC10(align_buf);
	return rc;
}