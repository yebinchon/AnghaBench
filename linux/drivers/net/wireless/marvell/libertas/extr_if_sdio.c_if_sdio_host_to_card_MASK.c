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
typedef  int u8 ;
typedef  int u16 ;
struct lbs_private {int /*<<< orphan*/  dnld_sent; struct if_sdio_card* card; } ;
struct if_sdio_packet {int nb; int* buffer; struct if_sdio_packet* next; } ;
struct if_sdio_card {int /*<<< orphan*/  packet_worker; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  lock; struct if_sdio_packet* packets; int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int /*<<< orphan*/  DNLD_CMD_SENT ; 
 int /*<<< orphan*/  DNLD_DATA_SENT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  MVMS_CMD 129 
#define  MVMS_DAT 128 
 struct if_sdio_packet* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct lbs_private *priv,
		u8 type, u8 *buf, u16 nb)
{
	int ret;
	struct if_sdio_card *card;
	struct if_sdio_packet *packet, *cur;
	u16 size;
	unsigned long flags;

	card = priv->card;

	if (nb > (65536 - sizeof(struct if_sdio_packet) - 4)) {
		ret = -EINVAL;
		goto out;
	}

	/*
	 * The transfer must be in one transaction or the firmware
	 * goes suicidal. There's no way to guarantee that for all
	 * controllers, but we can at least try.
	 */
	size = FUNC4(card->func, nb + 4);

	packet = FUNC0(sizeof(struct if_sdio_packet) + size,
			GFP_ATOMIC);
	if (!packet) {
		ret = -ENOMEM;
		goto out;
	}

	packet->next = NULL;
	packet->nb = size;

	/*
	 * SDIO specific header.
	 */
	packet->buffer[0] = (nb + 4) & 0xff;
	packet->buffer[1] = ((nb + 4) >> 8) & 0xff;
	packet->buffer[2] = type;
	packet->buffer[3] = 0;

	FUNC2(packet->buffer + 4, buf, nb);

	FUNC5(&card->lock, flags);

	if (!card->packets)
		card->packets = packet;
	else {
		cur = card->packets;
		while (cur->next)
			cur = cur->next;
		cur->next = packet;
	}

	switch (type) {
	case MVMS_CMD:
		priv->dnld_sent = DNLD_CMD_SENT;
		break;
	case MVMS_DAT:
		priv->dnld_sent = DNLD_DATA_SENT;
		break;
	default:
		FUNC1("unknown packet type %d\n", (int)type);
	}

	FUNC6(&card->lock, flags);

	FUNC3(card->workqueue, &card->packet_worker);

	ret = 0;

out:
	return ret;
}