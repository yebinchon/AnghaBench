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
typedef  int u16 ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int FUNC1 (struct gspca_dev*,int const,int const) ; 
 int FUNC2 (struct gspca_dev*,int const,int const) ; 

__attribute__((used)) static int FUNC3(struct gspca_dev *gspca_dev,
			const u16 (*data)[2])
{
	int ret = 0;

	while ((*data)[1] != 0) {
		if ((*data)[1] & 0x8000) {
			if ((*data)[1] == 0xdd00)	/* delay */
				FUNC0((*data)[0]);
			else
				ret = FUNC1(gspca_dev, (*data)[1],
								(*data)[0]);
		} else {
			ret = FUNC2(gspca_dev, (*data)[1], (*data)[0]);
		}
		if (ret < 0)
			break;
		data++;
	}
	return ret;
}