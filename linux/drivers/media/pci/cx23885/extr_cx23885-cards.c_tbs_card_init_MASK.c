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
struct cx23885_dev {int board; } ;

/* Variables and functions */
#define  CX23885_BOARD_TBS_6980 129 
#define  CX23885_BOARD_TBS_6981 128 
 int /*<<< orphan*/  GP0_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct cx23885_dev *dev)
{
	int i;
	static const u8 buf[] = {
		0xe0, 0x06, 0x66, 0x33, 0x65,
		0x01, 0x17, 0x06, 0xde};

	switch (dev->board) {
	case CX23885_BOARD_TBS_6980:
	case CX23885_BOARD_TBS_6981:
		FUNC1(GP0_IO, 0x00070007);
		FUNC2(1000, 10000);
		FUNC0(GP0_IO, 2);
		FUNC2(1000, 10000);
		for (i = 0; i < 9 * 8; i++) {
			FUNC0(GP0_IO, 7);
			FUNC2(1000, 10000);
			FUNC1(GP0_IO,
				((buf[i >> 3] >> (7 - (i & 7))) & 1) | 4);
			FUNC2(1000, 10000);
		}
		FUNC1(GP0_IO, 7);
		break;
	}
}