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
typedef  int u64 ;
struct niu {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZCP_RAM_ACC ; 
 int /*<<< orphan*/  ZCP_RAM_ACC_BUSY ; 
 int ZCP_RAM_ACC_RAM_SEL_SHIFT ; 
 int ZCP_RAM_ACC_WRITE ; 
 int ZCP_RAM_ACC_ZFCID_SHIFT ; 
 int /*<<< orphan*/  ZCP_RAM_BE ; 
 int ZCP_RAM_BE_VAL ; 
 int /*<<< orphan*/  ZCP_RAM_DATA0 ; 
 int /*<<< orphan*/  ZCP_RAM_DATA1 ; 
 int /*<<< orphan*/  ZCP_RAM_DATA2 ; 
 int /*<<< orphan*/  ZCP_RAM_DATA3 ; 
 int /*<<< orphan*/  ZCP_RAM_DATA4 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct niu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct niu *np, int index, u64 *data)
{
	FUNC2(ZCP_RAM_DATA0, data[0]);
	FUNC2(ZCP_RAM_DATA1, data[1]);
	FUNC2(ZCP_RAM_DATA2, data[2]);
	FUNC2(ZCP_RAM_DATA3, data[3]);
	FUNC2(ZCP_RAM_DATA4, data[4]);
	FUNC2(ZCP_RAM_BE, ZCP_RAM_BE_VAL);
	FUNC2(ZCP_RAM_ACC,
	     (ZCP_RAM_ACC_WRITE |
	      (0 << ZCP_RAM_ACC_ZFCID_SHIFT) |
	      (FUNC0(np->port) << ZCP_RAM_ACC_RAM_SEL_SHIFT)));

	return FUNC1(np, ZCP_RAM_ACC, ZCP_RAM_ACC_BUSY,
				   1000, 100);
}