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
struct urb {int /*<<< orphan*/ * transfer_buffer; } ;
struct tm6000_dvb {int /*<<< orphan*/  mutex; int /*<<< orphan*/  adapter; int /*<<< orphan*/  demux; int /*<<< orphan*/  dmxdev; scalar_t__ frontend; struct urb* bulk_urb; } ;
struct tm6000_core {struct tm6000_dvb* dvb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*) ; 

__attribute__((used)) static void FUNC9(struct tm6000_core *dev)
{
	struct tm6000_dvb *dvb = dev->dvb;

	if (dvb->bulk_urb) {
		struct urb *bulk_urb = dvb->bulk_urb;

		FUNC5(bulk_urb->transfer_buffer);
		bulk_urb->transfer_buffer = NULL;
		FUNC8(bulk_urb);
		FUNC7(bulk_urb);
	}

/*	mutex_lock(&tm6000_driver.open_close_mutex); */
	if (dvb->frontend) {
		FUNC4(dvb->frontend);
		FUNC2(dvb->frontend);
	}

	FUNC1(&dvb->dmxdev);
	FUNC0(&dvb->demux);
	FUNC3(&dvb->adapter);
	FUNC6(&dvb->mutex);
/*	mutex_unlock(&tm6000_driver.open_close_mutex); */
}