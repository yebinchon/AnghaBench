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
struct si470x_device {int* registers; } ;
struct file {int dummy; } ;

/* Variables and functions */
 size_t SYSCONFIG1 ; 
 int SYSCONFIG1_GPIO2 ; 
 int SYSCONFIG1_RDSIEN ; 
 int SYSCONFIG1_STCIEN ; 
 int FUNC0 (struct si470x_device*,size_t) ; 
 int FUNC1 (struct si470x_device*) ; 
 scalar_t__ FUNC2 (struct file*) ; 
 int FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 struct si470x_device* FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct file *file)
{
	struct si470x_device *radio = FUNC5(file);
	int retval = FUNC3(file);

	if (retval)
		return retval;

	if (FUNC2(file)) {
		/* start radio */
		retval = FUNC1(radio);
		if (retval < 0)
			goto done;

		/* enable RDS / STC interrupt */
		radio->registers[SYSCONFIG1] |= SYSCONFIG1_RDSIEN;
		radio->registers[SYSCONFIG1] |= SYSCONFIG1_STCIEN;
		radio->registers[SYSCONFIG1] &= ~SYSCONFIG1_GPIO2;
		radio->registers[SYSCONFIG1] |= 0x1 << 2;
		retval = FUNC0(radio, SYSCONFIG1);
	}

done:
	if (retval)
		FUNC4(file);
	return retval;
}