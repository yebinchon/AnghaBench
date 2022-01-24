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
struct mxic_nand_ctlr {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mxic_nand_ctlr *nfc, u8 idly_code)
{
	FUNC2(FUNC1(0, idly_code) |
	       FUNC1(1, idly_code) |
	       FUNC1(2, idly_code) |
	       FUNC1(3, idly_code),
	       nfc->regs + FUNC0(0));
	FUNC2(FUNC1(4, idly_code) |
	       FUNC1(5, idly_code) |
	       FUNC1(6, idly_code) |
	       FUNC1(7, idly_code),
	       nfc->regs + FUNC0(1));
}