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
struct cxusb_medion_auxbuf {int dummy; } ;
struct cxusb_bt656_params {scalar_t__ fmode; scalar_t__ line; int /*<<< orphan*/  pos; } ;

/* Variables and functions */
 scalar_t__ LINE_SAMPLES ; 
 scalar_t__ START_SEARCH ; 
 int /*<<< orphan*/  FUNC0 (struct cxusb_bt656_params*,unsigned int,unsigned char) ; 
 int FUNC1 (struct dvb_usb_device*,struct cxusb_medion_auxbuf*,struct cxusb_bt656_params*,unsigned int) ; 

__attribute__((used)) static bool FUNC2(struct dvb_usb_device *dvbdev,
				      struct cxusb_medion_auxbuf *auxbuf,
				      struct cxusb_bt656_params *bt656,
				      unsigned int maxlinesamples,
				      unsigned char val)
{
	if (bt656->fmode == START_SEARCH && bt656->line > 0)
		return FUNC1(dvbdev, auxbuf, bt656,
						 maxlinesamples);
	else if (bt656->fmode == LINE_SAMPLES)
		FUNC0(bt656, maxlinesamples, val);
	else /* TODO: copy VBI samples */
		bt656->pos++;

	return true;
}