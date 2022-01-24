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
typedef  int /*<<< orphan*/  u32 ;
struct fsmc_nand_data {int /*<<< orphan*/  data_va; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fsmc_nand_data *host, u8 *buf, int len)
{
	int i;

	if (FUNC0((uintptr_t)buf, sizeof(u32)) &&
	    FUNC0(len, sizeof(u32))) {
		u32 *p = (u32 *)buf;

		len = len >> 2;
		for (i = 0; i < len; i++)
			p[i] = FUNC2(host->data_va);
	} else {
		for (i = 0; i < len; i++)
			buf[i] = FUNC1(host->data_va);
	}
}