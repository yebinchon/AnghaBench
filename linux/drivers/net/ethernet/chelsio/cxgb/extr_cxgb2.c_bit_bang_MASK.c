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
typedef  int u32 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_ELMER0_GPO ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct adapter *adapter, int bitdata, int nbits)
{
	int data;
	int i;
	u32 val;

	enum {
		S_CLOCK = 1 << 3,
		S_DATA = 1 << 4
	};

	for (i = (nbits - 1); i > -1; i--) {

		FUNC2(50);

		data = ((bitdata >> i) & 0x1);
		FUNC0(adapter, A_ELMER0_GPO, &val);

		if (data)
			val |= S_DATA;
		else
			val &= ~S_DATA;

		FUNC2(50);

		/* Set SCLOCK low */
		val &= ~S_CLOCK;
		FUNC1(adapter, A_ELMER0_GPO, val);

		FUNC2(50);

		/* Write SCLOCK high */
		val |= S_CLOCK;
		FUNC1(adapter, A_ELMER0_GPO, val);

	}
}