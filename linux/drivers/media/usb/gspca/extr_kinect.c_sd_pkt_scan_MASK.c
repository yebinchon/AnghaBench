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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ u8 ;
struct sd {int stream_flag; } ;
struct pkt_hdr {char* magic; scalar_t__ flag; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIRST_PACKET ; 
 int /*<<< orphan*/  INTER_PACKET ; 
 int /*<<< orphan*/  LAST_PACKET ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev, u8 *__data, int len)
{
	struct sd *sd = (struct sd *) gspca_dev;

	struct pkt_hdr *hdr = (void *)__data;
	uint8_t *data = __data + sizeof(*hdr);
	int datalen = len - sizeof(*hdr);

	uint8_t sof = sd->stream_flag | 1;
	uint8_t mof = sd->stream_flag | 2;
	uint8_t eof = sd->stream_flag | 5;

	if (len < 12)
		return;

	if (hdr->magic[0] != 'R' || hdr->magic[1] != 'B') {
		FUNC1("[Stream %02x] Invalid magic %02x%02x\n",
			sd->stream_flag, hdr->magic[0], hdr->magic[1]);
		return;
	}

	if (hdr->flag == sof)
		FUNC0(gspca_dev, FIRST_PACKET, data, datalen);

	else if (hdr->flag == mof)
		FUNC0(gspca_dev, INTER_PACKET, data, datalen);

	else if (hdr->flag == eof)
		FUNC0(gspca_dev, LAST_PACKET, data, datalen);

	else
		FUNC1("Packet type not recognized...\n");
}