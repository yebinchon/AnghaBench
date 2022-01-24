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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_CONTEXT_CMD ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA0 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA1 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA2 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA3 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_MASK0 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_MASK1 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_MASK2 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_MASK3 ; 
 int /*<<< orphan*/  F_CONTEXT_CMD_BUSY ; 
 int /*<<< orphan*/  SG_CONTEXT_CMD_ATTEMPTS ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int) ; 
 int FUNC2 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct adapter *adap, unsigned int id,
			  unsigned int type)
{
	FUNC3(adap, A_SG_CONTEXT_DATA0, 0);
	FUNC3(adap, A_SG_CONTEXT_DATA1, 0);
	FUNC3(adap, A_SG_CONTEXT_DATA2, 0);
	FUNC3(adap, A_SG_CONTEXT_DATA3, 0);
	FUNC3(adap, A_SG_CONTEXT_MASK0, 0xffffffff);
	FUNC3(adap, A_SG_CONTEXT_MASK1, 0xffffffff);
	FUNC3(adap, A_SG_CONTEXT_MASK2, 0xffffffff);
	FUNC3(adap, A_SG_CONTEXT_MASK3, 0xffffffff);
	FUNC3(adap, A_SG_CONTEXT_CMD,
		     FUNC1(1) | type | FUNC0(id));
	return FUNC2(adap, A_SG_CONTEXT_CMD, F_CONTEXT_CMD_BUSY,
			       0, SG_CONTEXT_CMD_ATTEMPTS, 1);
}