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
struct bnx2 {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int CRC32_RESIDUAL ; 
 int ENODEV ; 
 int NVRAM_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bnx2*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct bnx2 *bp)
{
	__be32 buf[NVRAM_SIZE / 4];
	u8 *data = (u8 *) buf;
	int rc = 0;
	u32 magic, csum;

	if ((rc = FUNC1(bp, 0, data, 4)) != 0)
		goto test_nvram_done;

        magic = FUNC0(buf[0]);
	if (magic != 0x669955aa) {
		rc = -ENODEV;
		goto test_nvram_done;
	}

	if ((rc = FUNC1(bp, 0x100, data, NVRAM_SIZE)) != 0)
		goto test_nvram_done;

	csum = FUNC2(0x100, data);
	if (csum != CRC32_RESIDUAL) {
		rc = -ENODEV;
		goto test_nvram_done;
	}

	csum = FUNC2(0x100, data + 0x100);
	if (csum != CRC32_RESIDUAL) {
		rc = -ENODEV;
	}

test_nvram_done:
	return rc;
}