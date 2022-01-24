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
struct ene_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENE_FW1 ; 
 int /*<<< orphan*/  ENE_FW1_WAKE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ene_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct ene_device *dev, bool enable)
{
	FUNC0("wake on IR %s", enable ? "enabled" : "disabled");
	FUNC1(dev, ENE_FW1, ENE_FW1_WAKE, enable);
}