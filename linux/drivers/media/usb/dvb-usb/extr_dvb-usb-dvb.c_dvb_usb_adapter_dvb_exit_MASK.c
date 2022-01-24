#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  (* close ) (TYPE_1__*) ;} ;
struct TYPE_4__ {TYPE_1__ dmx; } ;
struct dvb_usb_adapter {int state; int /*<<< orphan*/  dvb_adap; TYPE_2__ demux; int /*<<< orphan*/  dmxdev; int /*<<< orphan*/  dvb_net; } ;

/* Variables and functions */
 int DVB_USB_ADAP_STATE_DVB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dvb_usb_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

int FUNC7(struct dvb_usb_adapter *adap)
{
	if (adap->state & DVB_USB_ADAP_STATE_DVB) {
		FUNC0("unregistering DVB part\n");
		FUNC3(&adap->dvb_net);
		adap->demux.dmx.close(&adap->demux.dmx);
		FUNC2(&adap->dmxdev);
		FUNC1(&adap->demux);
		FUNC5(adap);
		FUNC4(&adap->dvb_adap);
		adap->state &= ~DVB_USB_ADAP_STATE_DVB;
	}
	return 0;
}