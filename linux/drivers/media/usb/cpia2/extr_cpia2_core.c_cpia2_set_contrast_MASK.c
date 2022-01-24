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
struct camera_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPIA2_CMD_SET_CONTRAST ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  TRANSFER_WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct camera_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 

void FUNC2(struct camera_data *cam, unsigned char value)
{
	FUNC0("Setting contrast to %d (0x%0x)\n", value, value);
	FUNC1(cam, CPIA2_CMD_SET_CONTRAST, TRANSFER_WRITE, value);
}