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
struct sd {int /*<<< orphan*/  work_struct; } ;
struct gspca_dev {int /*<<< orphan*/  usb_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct gspca_dev *gspca_dev)
{
	struct sd *dev = (struct sd *) gspca_dev;

	/* wait for the work queue to terminate */
	FUNC2(&gspca_dev->usb_lock);
	/* This waits for sq905c_dostream to finish */
	FUNC0(&dev->work_struct);
	FUNC1(&gspca_dev->usb_lock);
}