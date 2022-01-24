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
struct sd {int dummy; } ;
struct gspca_dev {int dummy; } ;
typedef  int __s32 ;

/* Variables and functions */
 int /*<<< orphan*/  D_CONF ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct sd*,int) ; 

__attribute__((used)) static int FUNC2(struct gspca_dev *gspca_dev, __s32 val)
{
	FUNC0(gspca_dev, D_CONF, "Writing gain %d\n", val);
	return FUNC1((struct sd *) gspca_dev,
			       val & 0xff);
}