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
struct docg3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DOC_ECC_BCH_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct docg3*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct docg3 *docg3, u8 *hwecc)
{
	int i;

	for (i = 0; i < DOC_ECC_BCH_SIZE; i++)
		hwecc[i] = FUNC1(docg3, FUNC0(i));
}