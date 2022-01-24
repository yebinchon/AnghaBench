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
struct ucb1x00 {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct ucb1x00* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ucb1x00*) ; 

__attribute__((used)) static void FUNC2(struct device *dev)
{
	struct ucb1x00 *ucb = FUNC0(dev);
	FUNC1(ucb);
}