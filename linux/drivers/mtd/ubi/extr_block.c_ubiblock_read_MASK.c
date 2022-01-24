#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct ubiblock_pdu {int /*<<< orphan*/  usgl; } ;
struct ubiblock {int leb_size; int /*<<< orphan*/  desc; } ;
struct request {TYPE_1__* q; } ;
struct TYPE_2__ {struct ubiblock* queuedata; } ;

/* Variables and functions */
 struct request* FUNC0 (struct ubiblock_pdu*) ; 
 int FUNC1 (struct request*) ; 
 int FUNC2 (struct request*) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC5(struct ubiblock_pdu *pdu)
{
	int ret, leb, offset, bytes_left, to_read;
	u64 pos;
	struct request *req = FUNC0(pdu);
	struct ubiblock *dev = req->q->queuedata;

	to_read = FUNC1(req);
	pos = FUNC2(req) << 9;

	/* Get LEB:offset address to read from */
	offset = FUNC3(pos, dev->leb_size);
	leb = pos;
	bytes_left = to_read;

	while (bytes_left) {
		/*
		 * We can only read one LEB at a time. Therefore if the read
		 * length is larger than one LEB size, we split the operation.
		 */
		if (offset + to_read > dev->leb_size)
			to_read = dev->leb_size - offset;

		ret = FUNC4(dev->desc, leb, &pdu->usgl, offset, to_read);
		if (ret < 0)
			return ret;

		bytes_left -= to_read;
		to_read = bytes_left;
		leb += 1;
		offset = 0;
	}
	return 0;
}