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
typedef  int u16 ;
struct docg3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOC_READADDRESS ; 
 int FUNC0 (struct docg3*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct docg3*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct docg3 *docg3, int reg)
{
	u16 val;

	FUNC2(docg3, reg, DOC_READADDRESS);
	val = FUNC0(docg3, reg);
	FUNC1("Read register %04x : %04x\n", reg, val);
	return val;
}