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
typedef  int /*<<< orphan*/  u8 ;
struct gspca_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct gspca_dev*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct gspca_dev*) ; 
 int FUNC4 (struct gspca_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct gspca_dev *gspca_dev, u8 *command)
{
	int i, status;
	__u8 reading[4];

	status = FUNC2(gspca_dev, command);
	if (status < 0)
		return status;

	status = -1;
	for (i = 0; i < 256 && status < 2; i++)
		status = FUNC3(gspca_dev);
	if (status < 0) {
		FUNC1("long command status read error %d\n", status);
		return status;
	}

	FUNC0(reading, 0, 4);
	status = FUNC4(gspca_dev, reading);
	if (status < 0)
		return status;

	/* in general, the first byte of the response is the first byte of
	 * the command, or'ed with 8 */
	status = FUNC3(gspca_dev);
	if (status < 0)
		return status;

	return 0;
}