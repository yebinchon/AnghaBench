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
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FM_DRV_CARD_SHORT_NAME ; 
 int /*<<< orphan*/  FM_DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
		struct v4l2_capability *capability)
{
	FUNC1(capability->driver, FM_DRV_NAME, sizeof(capability->driver));
	FUNC1(capability->card, FM_DRV_CARD_SHORT_NAME,
		sizeof(capability->card));
	FUNC0(capability->bus_info, "UART");
	return 0;
}