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
typedef  int u16 ;
struct if_sdio_card {int* buffer; int /*<<< orphan*/  ioport; int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IF_SDIO_IO_RDY ; 
#define  MVMS_CMD 130 
#define  MVMS_DAT 129 
#define  MVMS_EVENT 128 
 int FUNC0 (struct if_sdio_card*,int*,int) ; 
 int FUNC1 (struct if_sdio_card*,int*,int) ; 
 int FUNC2 (struct if_sdio_card*,int*,int) ; 
 int FUNC3 (struct if_sdio_card*,int*) ; 
 int FUNC4 (struct if_sdio_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct if_sdio_card *card)
{
	int ret;
	u16 size, type, chunk;

	size = FUNC3(card, &ret);
	if (ret)
		goto out;

	if (size < 4) {
		FUNC5("invalid packet size (%d bytes) from firmware\n",
			(int)size);
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC4(card, IF_SDIO_IO_RDY);
	if (ret)
		goto out;

	/*
	 * The transfer must be in one transaction or the firmware
	 * goes suicidal. There's no way to guarantee that for all
	 * controllers, but we can at least try.
	 */
	chunk = FUNC7(card->func, size);

	ret = FUNC8(card->func, card->buffer, card->ioport, chunk);
	if (ret)
		goto out;

	chunk = card->buffer[0] | (card->buffer[1] << 8);
	type = card->buffer[2] | (card->buffer[3] << 8);

	FUNC5("packet of type %d and size %d bytes\n",
		(int)type, (int)chunk);

	if (chunk > size) {
		FUNC5("packet fragment (%d > %d)\n",
			(int)chunk, (int)size);
		ret = -EINVAL;
		goto out;
	}

	if (chunk < size) {
		FUNC5("packet fragment (%d < %d)\n",
			(int)chunk, (int)size);
	}

	switch (type) {
	case MVMS_CMD:
		ret = FUNC0(card, card->buffer + 4, chunk - 4);
		if (ret)
			goto out;
		break;
	case MVMS_DAT:
		ret = FUNC1(card, card->buffer + 4, chunk - 4);
		if (ret)
			goto out;
		break;
	case MVMS_EVENT:
		ret = FUNC2(card, card->buffer + 4, chunk - 4);
		if (ret)
			goto out;
		break;
	default:
		FUNC5("invalid type (%d) from firmware\n",
				(int)type);
		ret = -EINVAL;
		goto out;
	}

out:
	if (ret)
		FUNC6("problem fetching packet from firmware\n");

	return ret;
}