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
struct dvb_usb_device {int dummy; } ;
struct cxusb_bt656_params {scalar_t__ fmode; } ;

/* Variables and functions */
 scalar_t__ LINE_SAMPLES ; 
 scalar_t__ START_SEARCH ; 
 scalar_t__ VBI_SAMPLES ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_usb_device*,struct cxusb_bt656_params*,int,unsigned int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_usb_device*,struct cxusb_bt656_params*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_usb_device*,struct cxusb_bt656_params*,unsigned char*) ; 

__attribute__((used)) static bool FUNC3(struct dvb_usb_device *dvbdev,
				     struct cxusb_bt656_params *bt656,
				     bool firstfield,
				     unsigned int maxlines,
				     unsigned int maxlinesamples,
				     unsigned char buf[4])
{
	if (bt656->fmode == START_SEARCH) {
		FUNC1(dvbdev, bt656, firstfield, buf);
	} else if (bt656->fmode == LINE_SAMPLES) {
		FUNC0(dvbdev, bt656, firstfield,
					       maxlinesamples, buf);
		return false;
	} else if (bt656->fmode == VBI_SAMPLES) {
		FUNC2(dvbdev, bt656, buf);
		return false;
	}

	return true;
}