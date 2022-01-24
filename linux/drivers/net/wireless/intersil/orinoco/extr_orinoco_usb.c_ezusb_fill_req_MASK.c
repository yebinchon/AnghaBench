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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct ezusb_packet {int /*<<< orphan*/  data; void* hermes_rid; void* hermes_len; void* crc; void* size; void* frame_type; scalar_t__ ans_reply_count; int /*<<< orphan*/  req_reply_count; void* magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BULK_BUF_SIZE ; 
 int EZUSB_MAGIC ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct ezusb_packet*) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void const*,int) ; 

__attribute__((used)) static int FUNC5(struct ezusb_packet *req, u16 length, u16 rid,
			  const void *data, u16 frame_type, u8 reply_count)
{
	int total_size = sizeof(*req) + length;

	FUNC0(total_size > BULK_BUF_SIZE);

	req->magic = FUNC3(EZUSB_MAGIC);
	req->req_reply_count = reply_count;
	req->ans_reply_count = 0;
	req->frame_type = FUNC3(frame_type);
	req->size = FUNC3(length + 4);
	req->crc = FUNC3(FUNC2(req));
	req->hermes_len = FUNC3(FUNC1(length));
	req->hermes_rid = FUNC3(rid);
	if (data)
		FUNC4(req->data, data, length);
	return total_size;
}