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
struct nand_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBU_NAND_WAIT ; 
 int NAND_WAIT_RD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct nand_chip *chip)
{
	return FUNC0(EBU_NAND_WAIT) & NAND_WAIT_RD;
}