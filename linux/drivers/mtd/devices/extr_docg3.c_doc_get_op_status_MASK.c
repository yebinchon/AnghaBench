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
typedef  int u8 ;
struct docg3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOC_CMD_PLANES_STATUS ; 
 int /*<<< orphan*/  DOC_SEQ_PLANES_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct docg3*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct docg3*) ; 
 int /*<<< orphan*/  FUNC2 (struct docg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct docg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct docg3*,int*,int,int) ; 

__attribute__((used)) static int FUNC5(struct docg3 *docg3)
{
	u8 status;

	FUNC3(docg3, DOC_SEQ_PLANES_STATUS);
	FUNC2(docg3, DOC_CMD_PLANES_STATUS);
	FUNC0(docg3, 5);

	FUNC1(docg3);
	FUNC4(docg3, &status, 1, 1);
	return status;
}