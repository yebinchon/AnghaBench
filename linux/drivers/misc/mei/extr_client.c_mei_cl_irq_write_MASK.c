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
typedef  scalar_t__ u32 ;
struct mei_msg_hdr {size_t length; int msg_complete; int dma_ring; } ;
struct mei_msg_data {size_t size; void* data; } ;
struct list_head {int dummy; } ;
struct mei_device {struct list_head write_waiting_list; } ;
struct mei_cl_cb {scalar_t__ buf_idx; int /*<<< orphan*/  list; struct mei_msg_data buf; } ;
struct mei_cl {int status; int /*<<< orphan*/  writing_state; struct mei_device* dev; } ;
typedef  int /*<<< orphan*/  mei_hdr ;
typedef  int /*<<< orphan*/  dma_len ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  MEI_WRITING ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_device*,struct mei_cl*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 int FUNC3 (struct mei_cl*) ; 
 scalar_t__ FUNC4 (struct mei_cl*) ; 
 scalar_t__ FUNC5 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mei_device*,void*,size_t) ; 
 scalar_t__ FUNC7 (struct mei_device*) ; 
 int FUNC8 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct mei_msg_hdr*,struct mei_cl_cb*) ; 
 size_t FUNC10 (scalar_t__) ; 
 int FUNC11 (struct mei_device*,struct mei_msg_hdr*,size_t,void const*,size_t) ; 

int FUNC12(struct mei_cl *cl, struct mei_cl_cb *cb,
		     struct list_head *cmpl_list)
{
	struct mei_device *dev;
	struct mei_msg_data *buf;
	struct mei_msg_hdr mei_hdr;
	size_t hdr_len = sizeof(mei_hdr);
	size_t len;
	size_t hbuf_len, dr_len;
	int hbuf_slots;
	u32 dr_slots;
	u32 dma_len;
	int rets;
	bool first_chunk;
	const void *data;

	if (FUNC0(!cl || !cl->dev))
		return -ENODEV;

	dev = cl->dev;

	buf = &cb->buf;

	first_chunk = cb->buf_idx == 0;

	rets = first_chunk ? FUNC3(cl) : 1;
	if (rets < 0)
		goto err;

	if (rets == 0) {
		FUNC1(dev, cl, "No flow control credentials: not sending.\n");
		return 0;
	}

	len = buf->size - cb->buf_idx;
	data = buf->data + cb->buf_idx;
	hbuf_slots = FUNC8(dev);
	if (hbuf_slots < 0) {
		rets = -EOVERFLOW;
		goto err;
	}

	hbuf_len = FUNC10(hbuf_slots);
	dr_slots = FUNC5(dev);
	dr_len = FUNC10(dr_slots);

	FUNC9(&mei_hdr, cb);

	/**
	 * Split the message only if we can write the whole host buffer
	 * otherwise wait for next time the host buffer is empty.
	 */
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
	} else if ((u32)hbuf_slots == FUNC7(dev)) {
		len = hbuf_len - hdr_len;
		mei_hdr.length = len;
	} else {
		return 0;
	}

	if (mei_hdr.dma_ring)
		FUNC6(dev, buf->data + cb->buf_idx, len);

	rets = FUNC11(dev, &mei_hdr, hdr_len, data, mei_hdr.length);
	if (rets)
		goto err;

	cl->status = 0;
	cl->writing_state = MEI_WRITING;
	cb->buf_idx += len;

	if (first_chunk) {
		if (FUNC4(cl)) {
			rets = -EIO;
			goto err;
		}
	}

	if (mei_hdr.msg_complete)
		FUNC2(&cb->list, &dev->write_waiting_list);

	return 0;

err:
	cl->status = rets;
	FUNC2(&cb->list, cmpl_list);
	return rets;
}