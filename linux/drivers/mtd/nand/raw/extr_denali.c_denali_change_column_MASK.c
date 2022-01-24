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
 int FUNC0 (struct nand_chip*,unsigned int,void*,unsigned int,int) ; 
 int FUNC1 (struct nand_chip*,unsigned int,void*,unsigned int,int) ; 

__attribute__((used)) static int FUNC2(struct nand_chip *chip, unsigned int offset,
				void *buf, unsigned int len, bool write)
{
	if (write)
		return FUNC1(chip, offset, buf, len,
						   false);
	else
		return FUNC0(chip, offset, buf, len,
						  false);
}