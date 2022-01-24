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
struct cx231xx {int afe_mode; scalar_t__ video_input; } ;
typedef  enum AFE_MODE { ____Placeholder_AFE_MODE } AFE_MODE ;

/* Variables and functions */
#define  AFE_MODE_BASEBAND 132 
#define  AFE_MODE_EU_HI_IF 131 
#define  AFE_MODE_JAPAN_HI_IF 130 
#define  AFE_MODE_LOW_IF 129 
#define  AFE_MODE_US_HI_IF 128 
 scalar_t__ CX231XX_VMUX_TELEVISION ; 
 int /*<<< orphan*/  FUNC0 (struct cx231xx*) ; 
 int FUNC1 (struct cx231xx*,scalar_t__) ; 
 int FUNC2 (struct cx231xx*) ; 

int FUNC3(struct cx231xx *dev, enum AFE_MODE mode)
{
	int status = 0;

	/*
	* FIXME: We need to implement the AFE code for LOW IF and for HI IF.
	* Currently, only baseband works.
	*/

	switch (mode) {
	case AFE_MODE_LOW_IF:
		FUNC0(dev);
		break;
	case AFE_MODE_BASEBAND:
		status = FUNC2(dev);
		break;
	case AFE_MODE_EU_HI_IF:
		/* SetupAFEforEuHiIF(); */
		break;
	case AFE_MODE_US_HI_IF:
		/* SetupAFEforUsHiIF(); */
		break;
	case AFE_MODE_JAPAN_HI_IF:
		/* SetupAFEforJapanHiIF(); */
		break;
	}

	if ((mode != dev->afe_mode) &&
		(dev->video_input == CX231XX_VMUX_TELEVISION))
		status = FUNC1(dev,
						     CX231XX_VMUX_TELEVISION);

	dev->afe_mode = mode;

	return status;
}