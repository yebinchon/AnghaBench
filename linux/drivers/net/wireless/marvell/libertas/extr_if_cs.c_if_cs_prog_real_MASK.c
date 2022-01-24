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
struct if_cs_card {int dummy; } ;
struct firmware {int size; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int ENODEV ; 
 int IF_CS_BIT_COMMAND ; 
 int /*<<< orphan*/  IF_CS_CARD_STATUS ; 
 int /*<<< orphan*/  IF_CS_CMD ; 
 int /*<<< orphan*/  IF_CS_CMD_LEN ; 
 int /*<<< orphan*/  IF_CS_HOST_INT_CAUSE ; 
 int /*<<< orphan*/  IF_CS_HOST_STATUS ; 
 int /*<<< orphan*/  IF_CS_SCRATCH ; 
 int IF_CS_SQ_HELPER_OK ; 
 int /*<<< orphan*/  IF_CS_SQ_READ_LOW ; 
 int FUNC0 (struct if_cs_card*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct if_cs_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct if_cs_card*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct if_cs_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct if_cs_card*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct if_cs_card *card, const struct firmware *fw)
{
	int ret = 0;
	int retry = 0;
	int len = 0;
	int sent;

	FUNC5("fw size %td\n", fw->size);

	ret = FUNC0(card, IF_CS_SQ_READ_LOW,
		IF_CS_SQ_HELPER_OK);
	if (ret < 0) {
		FUNC6("helper firmware doesn't answer\n");
		goto done;
	}

	for (sent = 0; sent < fw->size; sent += len) {
		len = FUNC1(card, IF_CS_SQ_READ_LOW);
		if (len & 1) {
			retry++;
			FUNC7("odd, need to retry this firmware block\n");
		} else {
			retry = 0;
		}

		if (retry > 20) {
			FUNC6("could not download firmware\n");
			ret = -ENODEV;
			goto done;
		}
		if (retry) {
			sent -= len;
		}


		FUNC2(card, IF_CS_CMD_LEN, len);

		FUNC3(card, IF_CS_CMD,
			&fw->data[sent],
			(len+1) >> 1);
		FUNC4(card, IF_CS_HOST_STATUS, IF_CS_BIT_COMMAND);
		FUNC2(card, IF_CS_HOST_INT_CAUSE, IF_CS_BIT_COMMAND);

		ret = FUNC0(card, IF_CS_CARD_STATUS,
			IF_CS_BIT_COMMAND);
		if (ret < 0) {
			FUNC6("can't download firmware at 0x%x\n", sent);
			goto done;
		}
	}

	ret = FUNC0(card, IF_CS_SCRATCH, 0x5a);
	if (ret < 0)
		FUNC6("firmware download failed\n");

done:
	return ret;
}