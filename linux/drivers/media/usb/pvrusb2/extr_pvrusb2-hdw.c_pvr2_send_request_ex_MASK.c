#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct pvr2_hdw {int cmd_debug_state; unsigned char cmd_debug_code; unsigned int cmd_debug_write_len; unsigned int cmd_debug_read_len; int ctl_write_pend_flag; int ctl_read_pend_flag; unsigned char* ctl_write_buffer; unsigned char* ctl_read_buffer; TYPE_1__* ctl_read_urb; TYPE_1__* ctl_write_urb; scalar_t__ ctl_timeout_flag; int /*<<< orphan*/  ctl_done; int /*<<< orphan*/  usb_dev; int /*<<< orphan*/  flag_ok; int /*<<< orphan*/  ctl_lock_held; } ;
struct TYPE_9__ {scalar_t__ expires; } ;
struct hdw_timer {TYPE_4__ timer; struct pvr2_hdw* hdw; } ;
struct TYPE_8__ {unsigned int actual_length; int status; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int EDEADLK ; 
 int EINVAL ; 
 int EIO ; 
 int ENOENT ; 
 int ENOTTY ; 
 int ESHUTDOWN ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int PVR2_CTL_BUFFSIZE ; 
 int /*<<< orphan*/  PVR2_CTL_READ_ENDPOINT ; 
 int /*<<< orphan*/  PVR2_CTL_WRITE_ENDPOINT ; 
 int /*<<< orphan*/  PVR2_TRACE_ERROR_LEGS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int,unsigned int) ; 
 int /*<<< orphan*/  pvr2_ctl_read_complete ; 
 int /*<<< orphan*/  pvr2_ctl_timeout ; 
 int /*<<< orphan*/  pvr2_ctl_write_complete ; 
 int /*<<< orphan*/  FUNC5 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,unsigned int,int /*<<< orphan*/ ,struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct pvr2_hdw *hdw,
				unsigned int timeout,int probe_fl,
				void *write_data,unsigned int write_len,
				void *read_data,unsigned int read_len)
{
	unsigned int idx;
	int status = 0;
	struct hdw_timer timer = {
		.hdw = hdw,
	};

	if (!hdw->ctl_lock_held) {
		FUNC6(PVR2_TRACE_ERROR_LEGS,
			   "Attempted to execute control transfer without lock!!");
		return -EDEADLK;
	}
	if (!hdw->flag_ok && !probe_fl) {
		FUNC6(PVR2_TRACE_ERROR_LEGS,
			   "Attempted to execute control transfer when device not ok");
		return -EIO;
	}
	if (!(hdw->ctl_read_urb && hdw->ctl_write_urb)) {
		if (!probe_fl) {
			FUNC6(PVR2_TRACE_ERROR_LEGS,
				   "Attempted to execute control transfer when USB is disconnected");
		}
		return -ENOTTY;
	}

	/* Ensure that we have sane parameters */
	if (!write_data) write_len = 0;
	if (!read_data) read_len = 0;
	if (write_len > PVR2_CTL_BUFFSIZE) {
		FUNC6(
			PVR2_TRACE_ERROR_LEGS,
			"Attempted to execute %d byte control-write transfer (limit=%d)",
			write_len,PVR2_CTL_BUFFSIZE);
		return -EINVAL;
	}
	if (read_len > PVR2_CTL_BUFFSIZE) {
		FUNC6(
			PVR2_TRACE_ERROR_LEGS,
			"Attempted to execute %d byte control-read transfer (limit=%d)",
			write_len,PVR2_CTL_BUFFSIZE);
		return -EINVAL;
	}
	if ((!write_len) && (!read_len)) {
		FUNC6(
			PVR2_TRACE_ERROR_LEGS,
			"Attempted to execute null control transfer?");
		return -EINVAL;
	}


	hdw->cmd_debug_state = 1;
	if (write_len && write_data)
		hdw->cmd_debug_code = ((unsigned char *)write_data)[0];
	else
		hdw->cmd_debug_code = 0;
	hdw->cmd_debug_write_len = write_len;
	hdw->cmd_debug_read_len = read_len;

	/* Initialize common stuff */
	FUNC3(&hdw->ctl_done);
	hdw->ctl_timeout_flag = 0;
	hdw->ctl_write_pend_flag = 0;
	hdw->ctl_read_pend_flag = 0;
	FUNC7(&timer.timer, pvr2_ctl_timeout, 0);
	timer.timer.expires = jiffies + timeout;

	if (write_len && write_data) {
		hdw->cmd_debug_state = 2;
		/* Transfer write data to internal buffer */
		for (idx = 0; idx < write_len; idx++) {
			hdw->ctl_write_buffer[idx] =
				((unsigned char *)write_data)[idx];
		}
		/* Initiate a write request */
		FUNC8(hdw->ctl_write_urb,
				  hdw->usb_dev,
				  FUNC10(hdw->usb_dev,
						  PVR2_CTL_WRITE_ENDPOINT),
				  hdw->ctl_write_buffer,
				  write_len,
				  pvr2_ctl_write_complete,
				  hdw);
		hdw->ctl_write_urb->actual_length = 0;
		hdw->ctl_write_pend_flag = !0;
		if (FUNC12(hdw->ctl_write_urb)) {
			FUNC6(
				PVR2_TRACE_ERROR_LEGS,
				"Invalid write control endpoint");
			return -EINVAL;
		}
		status = FUNC11(hdw->ctl_write_urb,GFP_KERNEL);
		if (status < 0) {
			FUNC6(PVR2_TRACE_ERROR_LEGS,
				   "Failed to submit write-control URB status=%d",
status);
			hdw->ctl_write_pend_flag = 0;
			goto done;
		}
	}

	if (read_len) {
		hdw->cmd_debug_state = 3;
		FUNC4(hdw->ctl_read_buffer,0x43,read_len);
		/* Initiate a read request */
		FUNC8(hdw->ctl_read_urb,
				  hdw->usb_dev,
				  FUNC9(hdw->usb_dev,
						  PVR2_CTL_READ_ENDPOINT),
				  hdw->ctl_read_buffer,
				  read_len,
				  pvr2_ctl_read_complete,
				  hdw);
		hdw->ctl_read_urb->actual_length = 0;
		hdw->ctl_read_pend_flag = !0;
		if (FUNC12(hdw->ctl_read_urb)) {
			FUNC6(
				PVR2_TRACE_ERROR_LEGS,
				"Invalid read control endpoint");
			return -EINVAL;
		}
		status = FUNC11(hdw->ctl_read_urb,GFP_KERNEL);
		if (status < 0) {
			FUNC6(PVR2_TRACE_ERROR_LEGS,
				   "Failed to submit read-control URB status=%d",
status);
			hdw->ctl_read_pend_flag = 0;
			goto done;
		}
	}

	/* Start timer */
	FUNC0(&timer.timer);

	/* Now wait for all I/O to complete */
	hdw->cmd_debug_state = 4;
	while (hdw->ctl_write_pend_flag || hdw->ctl_read_pend_flag) {
		FUNC13(&hdw->ctl_done);
	}
	hdw->cmd_debug_state = 5;

	/* Stop timer */
	FUNC1(&timer.timer);

	hdw->cmd_debug_state = 6;
	status = 0;

	if (hdw->ctl_timeout_flag) {
		status = -ETIMEDOUT;
		if (!probe_fl) {
			FUNC6(PVR2_TRACE_ERROR_LEGS,
				   "Timed out control-write");
		}
		goto done;
	}

	if (write_len) {
		/* Validate results of write request */
		if ((hdw->ctl_write_urb->status != 0) &&
		    (hdw->ctl_write_urb->status != -ENOENT) &&
		    (hdw->ctl_write_urb->status != -ESHUTDOWN) &&
		    (hdw->ctl_write_urb->status != -ECONNRESET)) {
			/* USB subsystem is reporting some kind of failure
			   on the write */
			status = hdw->ctl_write_urb->status;
			if (!probe_fl) {
				FUNC6(PVR2_TRACE_ERROR_LEGS,
					   "control-write URB failure, status=%d",
					   status);
			}
			goto done;
		}
		if (hdw->ctl_write_urb->actual_length < write_len) {
			/* Failed to write enough data */
			status = -EIO;
			if (!probe_fl) {
				FUNC6(PVR2_TRACE_ERROR_LEGS,
					   "control-write URB short, expected=%d got=%d",
					   write_len,
					   hdw->ctl_write_urb->actual_length);
			}
			goto done;
		}
	}
	if (read_len && read_data) {
		/* Validate results of read request */
		if ((hdw->ctl_read_urb->status != 0) &&
		    (hdw->ctl_read_urb->status != -ENOENT) &&
		    (hdw->ctl_read_urb->status != -ESHUTDOWN) &&
		    (hdw->ctl_read_urb->status != -ECONNRESET)) {
			/* USB subsystem is reporting some kind of failure
			   on the read */
			status = hdw->ctl_read_urb->status;
			if (!probe_fl) {
				FUNC6(PVR2_TRACE_ERROR_LEGS,
					   "control-read URB failure, status=%d",
					   status);
			}
			goto done;
		}
		if (hdw->ctl_read_urb->actual_length < read_len) {
			/* Failed to read enough data */
			status = -EIO;
			if (!probe_fl) {
				FUNC6(PVR2_TRACE_ERROR_LEGS,
					   "control-read URB short, expected=%d got=%d",
					   read_len,
					   hdw->ctl_read_urb->actual_length);
			}
			goto done;
		}
		/* Transfer retrieved data out from internal buffer */
		for (idx = 0; idx < read_len; idx++) {
			((unsigned char *)read_data)[idx] =
				hdw->ctl_read_buffer[idx];
		}
	}

 done:

	hdw->cmd_debug_state = 0;
	if ((status < 0) && (!probe_fl)) {
		FUNC5(hdw);
	}
	FUNC2(&timer.timer);

	return status;
}