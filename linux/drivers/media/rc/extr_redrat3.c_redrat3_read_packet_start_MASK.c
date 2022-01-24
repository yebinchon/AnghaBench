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
struct redrat3_header {int /*<<< orphan*/  fw_error; int /*<<< orphan*/  transfer_type; int /*<<< orphan*/  length; } ;
struct redrat3_error {int /*<<< orphan*/  fw_error; int /*<<< orphan*/  transfer_type; int /*<<< orphan*/  length; } ;
struct redrat3_dev {unsigned int bytes_read; int /*<<< orphan*/  dev; struct redrat3_header* bulk_in_buf; int /*<<< orphan*/  irdata; } ;

/* Variables and functions */
#define  RR3_ERROR 129 
#define  RR3_MOD_SIGNAL_IN 128 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct redrat3_header*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct redrat3_dev*,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct redrat3_dev *rr3, unsigned len)
{
	struct redrat3_header *header = rr3->bulk_in_buf;
	unsigned pktlen, pkttype;

	/* grab the Length and type of transfer */
	pktlen = FUNC0(header->length);
	pkttype = FUNC0(header->transfer_type);

	if (pktlen > sizeof(rr3->irdata)) {
		FUNC2(rr3->dev, "packet length %u too large\n", pktlen);
		return;
	}

	switch (pkttype) {
	case RR3_ERROR:
		if (len >= sizeof(struct redrat3_error)) {
			struct redrat3_error *error = rr3->bulk_in_buf;
			unsigned fw_error = FUNC0(error->fw_error);
			FUNC4(rr3, fw_error);
		}
		break;

	case RR3_MOD_SIGNAL_IN:
		FUNC3(&rr3->irdata, rr3->bulk_in_buf, len);
		rr3->bytes_read = len;
		FUNC1(rr3->dev, "bytes_read %d, pktlen %d\n",
			rr3->bytes_read, pktlen);
		break;

	default:
		FUNC1(rr3->dev, "ignoring packet with type 0x%02x, len of %d, 0x%02x\n",
						pkttype, len, pktlen);
		break;
	}
}