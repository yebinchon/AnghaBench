#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* fe; } ;
struct dvb_usb_adapter {size_t active_fe; size_t num_frontends_initialized; int feedcount; TYPE_4__* fe_adap; TYPE_3__ props; } ;
struct dvb_demux_feed {int /*<<< orphan*/  pid; int /*<<< orphan*/  index; TYPE_1__* demux; } ;
struct TYPE_8__ {int /*<<< orphan*/  stream; scalar_t__ pid_filtering; } ;
struct TYPE_6__ {int (* streaming_ctrl ) (struct dvb_usb_adapter*,int) ;int caps; int (* pid_filter_ctrl ) (struct dvb_usb_adapter*,scalar_t__) ;int /*<<< orphan*/  (* pid_filter ) (struct dvb_usb_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_5__ {struct dvb_usb_adapter* priv; } ;

/* Variables and functions */
 int DVB_USB_ADAP_HAS_PID_FILTER ; 
 int DVB_USB_ADAP_PID_FILTER_CAN_BE_TURNED_OFF ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct dvb_usb_adapter*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_usb_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct dvb_usb_adapter*,scalar_t__) ; 
 int FUNC5 (struct dvb_usb_adapter*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct dvb_demux_feed *dvbdmxfeed, int onoff)
{
	struct dvb_usb_adapter *adap = dvbdmxfeed->demux->priv;
	int newfeedcount, ret;

	if (adap == NULL)
		return -ENODEV;

	if ((adap->active_fe < 0) ||
	    (adap->active_fe >= adap->num_frontends_initialized)) {
		return -EINVAL;
	}

	newfeedcount = adap->feedcount + (onoff ? 1 : -1);

	/* stop feed before setting a new pid if there will be no pid anymore */
	if (newfeedcount == 0) {
		FUNC0("stop feeding\n");
		FUNC6(&adap->fe_adap[adap->active_fe].stream);

		if (adap->props.fe[adap->active_fe].streaming_ctrl != NULL) {
			ret = adap->props.fe[adap->active_fe].streaming_ctrl(adap, 0);
			if (ret < 0) {
				FUNC1("error while stopping stream.");
				return ret;
			}
		}
	}

	adap->feedcount = newfeedcount;

	/* activate the pid on the device specific pid_filter */
	FUNC0("setting pid (%s): %5d %04x at index %d '%s'\n",
		adap->fe_adap[adap->active_fe].pid_filtering ?
		"yes" : "no", dvbdmxfeed->pid, dvbdmxfeed->pid,
		dvbdmxfeed->index, onoff ? "on" : "off");
	if (adap->props.fe[adap->active_fe].caps & DVB_USB_ADAP_HAS_PID_FILTER &&
		adap->fe_adap[adap->active_fe].pid_filtering &&
		adap->props.fe[adap->active_fe].pid_filter != NULL)
		adap->props.fe[adap->active_fe].pid_filter(adap, dvbdmxfeed->index, dvbdmxfeed->pid, onoff);

	/* start the feed if this was the first feed and there is still a feed
	 * for reception.
	 */
	if (adap->feedcount == onoff && adap->feedcount > 0) {
		FUNC0("controlling pid parser\n");
		if (adap->props.fe[adap->active_fe].caps & DVB_USB_ADAP_HAS_PID_FILTER &&
			adap->props.fe[adap->active_fe].caps &
			DVB_USB_ADAP_PID_FILTER_CAN_BE_TURNED_OFF &&
			adap->props.fe[adap->active_fe].pid_filter_ctrl != NULL) {
			ret = adap->props.fe[adap->active_fe].pid_filter_ctrl(adap,
				adap->fe_adap[adap->active_fe].pid_filtering);
			if (ret < 0) {
				FUNC1("could not handle pid_parser");
				return ret;
			}
		}
		FUNC0("start feeding\n");
		if (adap->props.fe[adap->active_fe].streaming_ctrl != NULL) {
			ret = adap->props.fe[adap->active_fe].streaming_ctrl(adap, 1);
			if (ret < 0) {
				FUNC1("error while enabling fifo.");
				return ret;
			}
		}

		FUNC0("submitting all URBs\n");
		FUNC7(&adap->fe_adap[adap->active_fe].stream);
	}
	return 0;
}