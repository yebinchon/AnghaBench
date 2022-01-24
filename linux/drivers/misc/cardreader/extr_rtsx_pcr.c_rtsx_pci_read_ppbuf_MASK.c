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
typedef  int /*<<< orphan*/  u16 ;
struct rtsx_pcr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPBUF_BASE2 ; 
 int /*<<< orphan*/  READ_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_pcr*) ; 
 int FUNC4 (struct rtsx_pcr*,int) ; 

int FUNC5(struct rtsx_pcr *pcr, u8 *buf, int buf_len)
{
	int err;
	int i, j;
	u16 reg;
	u8 *ptr;

	if (buf_len > 512)
		buf_len = 512;

	ptr = buf;
	reg = PPBUF_BASE2;
	for (i = 0; i < buf_len / 256; i++) {
		FUNC3(pcr);

		for (j = 0; j < 256; j++)
			FUNC1(pcr, READ_REG_CMD, reg++, 0, 0);

		err = FUNC4(pcr, 250);
		if (err < 0)
			return err;

		FUNC0(ptr, FUNC2(pcr), 256);
		ptr += 256;
	}

	if (buf_len % 256) {
		FUNC3(pcr);

		for (j = 0; j < buf_len % 256; j++)
			FUNC1(pcr, READ_REG_CMD, reg++, 0, 0);

		err = FUNC4(pcr, 250);
		if (err < 0)
			return err;
	}

	FUNC0(ptr, FUNC2(pcr), buf_len % 256);

	return 0;
}