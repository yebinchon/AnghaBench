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
typedef  int /*<<< orphan*/  u32 ;
struct mtk_eth {int /*<<< orphan*/  ethsys; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHSYS_RSTCTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct mtk_eth *eth, u32 reset_bits)
{
	FUNC1(eth->ethsys, ETHSYS_RSTCTRL,
			   reset_bits,
			   reset_bits);

	FUNC2(1000, 1100);
	FUNC1(eth->ethsys, ETHSYS_RSTCTRL,
			   reset_bits,
			   ~reset_bits);
	FUNC0(10);
}