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
 int /*<<< orphan*/  D_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  rev72a_init_data1 ; 
 int /*<<< orphan*/  rev72a_init_data2 ; 
 int /*<<< orphan*/  rev72a_init_sensor1 ; 
 int /*<<< orphan*/  rev72a_init_sensor2 ; 
 int /*<<< orphan*/  rev72a_reset ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gspca_dev *gspca_dev)
{
	FUNC0(gspca_dev, D_STREAM, "Chip revision: 072a\n");
	FUNC4(gspca_dev, rev72a_reset);
	FUNC1(200);
	FUNC4(gspca_dev, rev72a_init_data1);
	FUNC3(gspca_dev, rev72a_init_sensor1);
	FUNC4(gspca_dev, rev72a_init_data2);
	FUNC3(gspca_dev, rev72a_init_sensor2);
	FUNC2(gspca_dev, 0x8112, 0x30);
	return 0;
}