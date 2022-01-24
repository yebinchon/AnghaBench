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
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gspca_dev*,int,int,int,int) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev)
{
	/* This is a high priority command; it stops all lower order cmds */
	if (FUNC1(gspca_dev, 1, 0x04, 0x0000, 0x0) != 0x0)
		FUNC0(gspca_dev, -EIO);
}