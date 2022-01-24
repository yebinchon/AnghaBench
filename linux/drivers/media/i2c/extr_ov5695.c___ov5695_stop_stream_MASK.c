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
struct ov5695 {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  OV5695_MODE_SW_STANDBY ; 
 int /*<<< orphan*/  OV5695_REG_CTRL_MODE ; 
 int /*<<< orphan*/  OV5695_REG_VALUE_08BIT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct ov5695 *ov5695)
{
	return FUNC0(ov5695->client, OV5695_REG_CTRL_MODE,
				OV5695_REG_VALUE_08BIT, OV5695_MODE_SW_STANDBY);
}