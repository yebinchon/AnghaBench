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
typedef  int u32 ;
struct mei_msg_hdr {size_t length; int msg_complete; int dma_ring; } ;
struct mei_msg_data {size_t size; void* data; } ;
struct mei_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  device_lock; int /*<<< orphan*/  write_list; int /*<<< orphan*/  write_waiting_list; } ;
struct mei_cl_cb {int blocking; size_t buf_idx; struct mei_msg_data buf; } ;
struct mei_cl {scalar_t__ writing_state; int /*<<< orphan*/  tx_wait; struct mei_device* dev; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  mei_hdr ;
typedef  int /*<<< orphan*/  dma_len ;

/* Variables and functions */
 size_t EFAULT ; 
 size_t EINPROGRESS ; 
 size_t EINTR ; 
 size_t EINVAL ; 
 size_t ENODEV ; 
 size_t EOVERFLOW ; 
 scalar_t__ MEI_IDLE ; 
 scalar_t__ MEI_WRITE_COMPLETE ; 
 scalar_t__ MEI_WRITING ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_device*,struct mei_cl*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_device*,struct mei_cl*,char*,size_t) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (struct mei_cl*) ; 
 size_t FUNC4 (struct mei_cl*) ; 
 size_t FUNC5 (struct mei_cl*) ; 
 int FUNC6 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct mei_device*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct mei_device*) ; 
 int FUNC9 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct mei_cl_cb*) ; 
 int /*<<< orphan*/  FUNC11 (struct mei_msg_hdr*,struct mei_cl_cb*) ; 
 size_t FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct mei_cl_cb*,int /*<<< orphan*/ *) ; 
 size_t FUNC14 (struct mei_device*,struct mei_msg_hdr*,size_t,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 size_t FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 size_t FUNC22 (int /*<<< orphan*/ ,int) ; 

ssize_t FUNC23(struct mei_cl *cl, struct mei_cl_cb *cb)
{
	struct mei_device *dev;
	struct mei_msg_data *buf;
	struct mei_msg_hdr mei_hdr;
	size_t hdr_len = sizeof(mei_hdr);
	size_t len, hbuf_len, dr_len;
	int hbuf_slots;
	u32 dr_slots;
	u32 dma_len;
	ssize_t rets;
	bool blocking;
	const void *data;

	if (FUNC0(!cl || !cl->dev))
		return -ENODEV;

	if (FUNC0(!cb))
		return -EINVAL;

	dev = cl->dev;

	buf = &cb->buf;
	len = buf->size;

	FUNC1(dev, cl, "len=%zd\n", len);

	blocking = cb->blocking;
	data = buf->data;

	rets = FUNC17(dev->dev);
	if (rets < 0 && rets != -EINPROGRESS) {
		FUNC20(dev->dev);
		FUNC2(dev, cl, "rpm: get failed %zd\n", rets);
		goto free;
	}

	cb->buf_idx = 0;
	cl->writing_state = MEI_IDLE;


	rets = FUNC4(cl);
	if (rets < 0)
		goto err;

	FUNC11(&mei_hdr, cb);

	if (rets == 0) {
		FUNC1(dev, cl, "No flow control credentials: not sending.\n");
		rets = len;
		goto out;
	}

	if (!FUNC8(dev)) {
		FUNC1(dev, cl, "Cannot acquire the host buffer: not sending.\n");
		rets = len;
		goto out;
	}

	hbuf_slots = FUNC9(dev);
	if (hbuf_slots < 0) {
		rets = -EOVERFLOW;
		goto out;
	}

	hbuf_len = FUNC12(hbuf_slots);
	dr_slots = FUNC6(dev);
	dr_len =  FUNC12(dr_slots);

	if (len + hdr_len <= hbuf_len) {
		mei_hdr.length = len;
		mei_hdr.msg_complete = 1;
	} else if (dr_slots && hbuf_len >= hdr_len + sizeof(dma_len)) {
		mei_hdr.dma_ring = 1;
		if (len > dr_len)
			len = dr_len;
		else
			mei_hdr.msg_complete = 1;

		mei_hdr.length = sizeof(dma_len);
		dma_len = len;
		data = &dma_len;
	} else {
		len = hbuf_len - hdr_len;
		mei_hdr.length = len;
	}

	if (mei_hdr.dma_ring)
		FUNC7(dev, buf->data, len);

	rets = FUNC14(dev, &mei_hdr, hdr_len,
				 data, mei_hdr.length);
	if (rets)
		goto err;

	rets = FUNC5(cl);
	if (rets)
		goto err;

	cl->writing_state = MEI_WRITING;
	cb->buf_idx = len;
	/* restore return value */
	len = buf->size;

out:
	if (mei_hdr.msg_complete)
		FUNC13(cb, &dev->write_waiting_list);
	else
		FUNC13(cb, &dev->write_list);

	cb = NULL;
	if (blocking && cl->writing_state != MEI_WRITE_COMPLETE) {

		FUNC16(&dev->device_lock);
		rets = FUNC22(cl->tx_wait,
				cl->writing_state == MEI_WRITE_COMPLETE ||
				(!FUNC3(cl)));
		FUNC15(&dev->device_lock);
		/* wait_event_interruptible returns -ERESTARTSYS */
		if (rets) {
			if (FUNC21(current))
				rets = -EINTR;
			goto err;
		}
		if (cl->writing_state != MEI_WRITE_COMPLETE) {
			rets = -EFAULT;
			goto err;
		}
	}

	rets = len;
err:
	FUNC1(dev, cl, "rpm: autosuspend\n");
	FUNC18(dev->dev);
	FUNC19(dev->dev);
free:
	FUNC10(cb);

	return rets;
}