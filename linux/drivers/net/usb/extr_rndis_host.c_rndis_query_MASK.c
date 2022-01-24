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
struct usbnet {int dummy; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct rndis_query_c {int /*<<< orphan*/  request_id; int /*<<< orphan*/  len; int /*<<< orphan*/  offset; } ;
struct rndis_query {void* offset; void* len; void* oid; void* msg_len; void* msg_type; } ;
struct rndis_msg_hdr {int dummy; } ;

/* Variables and functions */
 int CONTROL_BUFFER_SIZE ; 
 int EDOM ; 
 int RNDIS_MSG_QUERY ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int,...) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rndis_query*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct usbnet*,struct rndis_msg_hdr*,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct usbnet *dev, struct usb_interface *intf,
		void *buf, u32 oid, u32 in_len,
		void **reply, int *reply_len)
{
	int retval;
	union {
		void			*buf;
		struct rndis_msg_hdr	*header;
		struct rndis_query	*get;
		struct rndis_query_c	*get_c;
	} u;
	u32 off, len;

	u.buf = buf;

	FUNC3(u.get, 0, sizeof *u.get + in_len);
	u.get->msg_type = FUNC0(RNDIS_MSG_QUERY);
	u.get->msg_len = FUNC0(sizeof *u.get + in_len);
	u.get->oid = FUNC0(oid);
	u.get->len = FUNC0(in_len);
	u.get->offset = FUNC0(20);

	retval = FUNC4(dev, u.header, CONTROL_BUFFER_SIZE);
	if (FUNC5(retval < 0)) {
		FUNC1(&intf->dev, "RNDIS_MSG_QUERY(0x%08x) failed, %d\n",
				oid, retval);
		return retval;
	}

	off = FUNC2(u.get_c->offset);
	len = FUNC2(u.get_c->len);
	if (FUNC5((8 + off + len) > CONTROL_BUFFER_SIZE))
		goto response_error;

	if (*reply_len != -1 && len != *reply_len)
		goto response_error;

	*reply = (unsigned char *) &u.get_c->request_id + off;
	*reply_len = len;

	return retval;

response_error:
	FUNC1(&intf->dev, "RNDIS_MSG_QUERY(0x%08x) "
			"invalid response - off %d len %d\n",
		oid, off, len);
	return -EDOM;
}