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

/* Variables and functions */
 int /*<<< orphan*/  D_STREAM ; 
 int /*<<< orphan*/  HDCS_STATE_RUN ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct sd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sd *sd)
{
	struct gspca_dev *gspca_dev = (struct gspca_dev *)sd;

	FUNC0(gspca_dev, D_STREAM, "Starting stream\n");

	return FUNC1(sd, HDCS_STATE_RUN);
}