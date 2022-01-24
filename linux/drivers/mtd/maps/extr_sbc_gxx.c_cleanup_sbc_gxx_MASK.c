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

/* Variables and functions */
 int /*<<< orphan*/  PAGE_IO ; 
 int /*<<< orphan*/  PAGE_IO_SIZE ; 
 scalar_t__ all_mtd ; 
 int /*<<< orphan*/  iomapadr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	if( all_mtd ) {
		FUNC2(all_mtd);
		FUNC1( all_mtd );
	}

	FUNC0(iomapadr);
	FUNC3(PAGE_IO,PAGE_IO_SIZE);
}