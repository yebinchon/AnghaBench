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
struct nand_chip {int options; } ;

/* Variables and functions */
 int COMMAND_RAR_BYTE1 ; 
 int COMMAND_RAR_BYTE2 ; 
 int COMMAND_RAR_BYTE3 ; 
 int NAND_ROW_ADDR_3 ; 
 int FUNC0 (int,int) ; 

__attribute__((used)) static void FUNC1(struct nand_chip *chip, int page, u32 *code,
			       u32 *row)
{
	*row = FUNC0(0, page & 0xff) | FUNC0(1, page >> 8);
	*code |= COMMAND_RAR_BYTE1 | COMMAND_RAR_BYTE2;

	if (chip->options & NAND_ROW_ADDR_3) {
		*row |= FUNC0(2, page >> 16);
		*code |= COMMAND_RAR_BYTE3;
	}
}