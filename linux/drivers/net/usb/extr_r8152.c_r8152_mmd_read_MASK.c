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
typedef  int /*<<< orphan*/  u16 ;
struct r8152 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCP_EEE_AR ; 
 int /*<<< orphan*/  OCP_EEE_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct r8152*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct r8152*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC3(struct r8152 *tp, u16 dev, u16 reg)
{
	u16 data;

	FUNC2(tp, dev, reg);
	data = FUNC0(tp, OCP_EEE_DATA);
	FUNC1(tp, OCP_EEE_AR, 0x0000);

	return data;
}