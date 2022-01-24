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
struct docg3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOC_ECCCONF0 ; 
 int DOC_ECCCONF0_BCH_ENABLE ; 
 int DOC_ECCCONF0_DATA_BYTES_MASK ; 
 int DOC_ECCCONF0_HAMMING_ENABLE ; 
 int DOC_ECCCONF0_READ_MODE ; 
 int /*<<< orphan*/  DOC_FLASHCONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct docg3*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct docg3*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct docg3*) ; 
 int /*<<< orphan*/  FUNC3 (struct docg3*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct docg3 *docg3, int len)
{
	FUNC3(docg3, DOC_ECCCONF0_READ_MODE
		   | DOC_ECCCONF0_BCH_ENABLE | DOC_ECCCONF0_HAMMING_ENABLE
		   | (len & DOC_ECCCONF0_DATA_BYTES_MASK),
		   DOC_ECCCONF0);
	FUNC0(docg3, 4);
	FUNC1(docg3, DOC_FLASHCONTROL);
	return FUNC2(docg3);
}