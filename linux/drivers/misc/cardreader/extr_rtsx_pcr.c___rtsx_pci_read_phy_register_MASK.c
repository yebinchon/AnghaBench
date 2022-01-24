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
typedef  int u8 ;
typedef  int u16 ;
struct rtsx_pcr {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  PHYADDR ; 
 int /*<<< orphan*/  PHYDATA0 ; 
 int /*<<< orphan*/  PHYDATA1 ; 
 int /*<<< orphan*/  PHYRWCTL ; 
 int /*<<< orphan*/  READ_REG_CMD ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int* FUNC1 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_pcr*) ; 
 int FUNC3 (struct rtsx_pcr*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (struct rtsx_pcr*,int) ; 

int FUNC5(struct rtsx_pcr *pcr, u8 addr, u16 *val)
{
	int err, i, finished = 0;
	u16 data;
	u8 *ptr, tmp;

	FUNC2(pcr);

	FUNC0(pcr, WRITE_REG_CMD, PHYADDR, 0xFF, addr);
	FUNC0(pcr, WRITE_REG_CMD, PHYRWCTL, 0xFF, 0x80);

	err = FUNC4(pcr, 100);
	if (err < 0)
		return err;

	for (i = 0; i < 100000; i++) {
		err = FUNC3(pcr, PHYRWCTL, &tmp);
		if (err < 0)
			return err;

		if (!(tmp & 0x80)) {
			finished = 1;
			break;
		}
	}

	if (!finished)
		return -ETIMEDOUT;

	FUNC2(pcr);

	FUNC0(pcr, READ_REG_CMD, PHYDATA0, 0, 0);
	FUNC0(pcr, READ_REG_CMD, PHYDATA1, 0, 0);

	err = FUNC4(pcr, 100);
	if (err < 0)
		return err;

	ptr = FUNC1(pcr);
	data = ((u16)ptr[1] << 8) | ptr[0];

	if (val)
		*val = data;

	return 0;
}