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
typedef  void* u32 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 unsigned int ULPRX_LA_SIZE ; 
 int /*<<< orphan*/  ULP_RX_LA_CTL_A ; 
 int /*<<< orphan*/  ULP_RX_LA_RDDATA_A ; 
 int /*<<< orphan*/  ULP_RX_LA_RDPTR_A ; 
 int /*<<< orphan*/  ULP_RX_LA_WRPTR_A ; 
 void* FUNC0 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,unsigned int) ; 

void FUNC2(struct adapter *adap, u32 *la_buf)
{
	unsigned int i, j;

	for (i = 0; i < 8; i++) {
		u32 *p = la_buf + i;

		FUNC1(adap, ULP_RX_LA_CTL_A, i);
		j = FUNC0(adap, ULP_RX_LA_WRPTR_A);
		FUNC1(adap, ULP_RX_LA_RDPTR_A, j);
		for (j = 0; j < ULPRX_LA_SIZE; j++, p += 8)
			*p = FUNC0(adap, ULP_RX_LA_RDDATA_A);
	}
}