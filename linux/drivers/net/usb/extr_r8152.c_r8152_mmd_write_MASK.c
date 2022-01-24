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
struct r8152 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCP_EEE_AR ; 
 int /*<<< orphan*/  OCP_EEE_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct r8152*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct r8152*,int,int) ; 

__attribute__((used)) static void FUNC2(struct r8152 *tp, u16 dev, u16 reg, u16 data)
{
	FUNC1(tp, dev, reg);
	FUNC0(tp, OCP_EEE_DATA, data);
	FUNC0(tp, OCP_EEE_AR, 0x0000);
}