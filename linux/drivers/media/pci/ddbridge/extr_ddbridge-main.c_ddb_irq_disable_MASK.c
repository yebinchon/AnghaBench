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
struct ddb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  MSI1_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct ddb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ddb *dev)
{
	FUNC0(dev, 0, INTERRUPT_ENABLE);
	FUNC0(dev, 0, MSI1_ENABLE);
}