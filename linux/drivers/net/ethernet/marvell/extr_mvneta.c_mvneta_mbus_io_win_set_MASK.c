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
typedef  int u32 ;
struct mvneta_port {int bm_win_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MVNETA_ACCESS_PROTECT_ENABLE ; 
 int /*<<< orphan*/  MVNETA_BASE_ADDR_ENABLE ; 
 int MVNETA_MAX_DECODE_WIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct mvneta_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mvneta_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct mvneta_port *pp, u32 base, u32 wsize,
				  u8 target, u8 attr)
{
	u32 win_enable, win_protect;
	int i;

	win_enable = FUNC3(pp, MVNETA_BASE_ADDR_ENABLE);

	if (pp->bm_win_id < 0) {
		/* Find first not occupied window */
		for (i = 0; i < MVNETA_MAX_DECODE_WIN; i++) {
			if (win_enable & (1 << i)) {
				pp->bm_win_id = i;
				break;
			}
		}
		if (i == MVNETA_MAX_DECODE_WIN)
			return -ENOMEM;
	} else {
		i = pp->bm_win_id;
	}

	FUNC4(pp, FUNC0(i), 0);
	FUNC4(pp, FUNC2(i), 0);

	if (i < 4)
		FUNC4(pp, FUNC1(i), 0);

	FUNC4(pp, FUNC0(i), (base & 0xffff0000) |
		    (attr << 8) | target);

	FUNC4(pp, FUNC2(i), (wsize - 1) & 0xffff0000);

	win_protect = FUNC3(pp, MVNETA_ACCESS_PROTECT_ENABLE);
	win_protect |= 3 << (2 * i);
	FUNC4(pp, MVNETA_ACCESS_PROTECT_ENABLE, win_protect);

	win_enable &= ~(1 << i);
	FUNC4(pp, MVNETA_BASE_ADDR_ENABLE, win_enable);

	return 0;
}