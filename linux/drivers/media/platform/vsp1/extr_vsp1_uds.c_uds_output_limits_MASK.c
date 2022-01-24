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
 int /*<<< orphan*/  UDS_MAX_FACTOR ; 
 int /*<<< orphan*/  UDS_MAX_SIZE ; 
 int /*<<< orphan*/  UDS_MIN_FACTOR ; 
 int /*<<< orphan*/  UDS_MIN_SIZE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(unsigned int input,
			      unsigned int *minimum, unsigned int *maximum)
{
	*minimum = FUNC0(FUNC2(input, UDS_MAX_FACTOR), UDS_MIN_SIZE);
	*maximum = FUNC1(FUNC2(input, UDS_MIN_FACTOR), UDS_MAX_SIZE);
}