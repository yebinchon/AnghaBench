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
struct tmio_nand {scalar_t__ fcr; } ;
struct nand_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ FCR_STATUS ; 
 int FCR_STATUS_BUSY ; 
 struct tmio_nand* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct nand_chip *chip)
{
	struct tmio_nand *tmio = FUNC0(FUNC1(chip));

	return !(FUNC2(tmio->fcr + FCR_STATUS) & FCR_STATUS_BUSY);
}