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
struct rvin_dev {int dummy; } ;

/* Variables and functions */
 int VNMS_CA ; 
 int /*<<< orphan*/  VNMS_REG ; 
 int FUNC0 (struct rvin_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct rvin_dev *vin)
{
	return FUNC0(vin, VNMS_REG) & VNMS_CA;
}