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
struct TYPE_2__ {void** chip; void* license; void* hw_version; void* fw_version; int /*<<< orphan*/  serial; } ;
struct softing {int /*<<< orphan*/ * dpram; TYPE_1__ id; } ;

/* Variables and functions */
 size_t DPRAM_FCT_PARAM ; 
 int FUNC0 (struct softing*,int,int,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct softing*,int,char*) ; 
 int FUNC4 (struct softing*) ; 

int FUNC5(struct softing *card)
{
	int ret;
	/* sync */
	ret = FUNC0(card, 99, 0x55, "sync-a");
	if (ret < 0)
		goto failed;

	ret = FUNC0(card, 99, 0xaa, "sync-b");
	if (ret < 0)
		goto failed;

	ret = FUNC4(card);
	if (ret < 0)
		goto failed;
	/* get_serial */
	ret = FUNC3(card, 43, "get_serial_number");
	if (ret < 0)
		goto failed;
	card->id.serial = FUNC2(&card->dpram[DPRAM_FCT_PARAM]);
	/* get_version */
	ret = FUNC3(card, 12, "get_version");
	if (ret < 0)
		goto failed;
	card->id.fw_version = FUNC1(&card->dpram[DPRAM_FCT_PARAM + 2]);
	card->id.hw_version = FUNC1(&card->dpram[DPRAM_FCT_PARAM + 4]);
	card->id.license = FUNC1(&card->dpram[DPRAM_FCT_PARAM + 6]);
	card->id.chip[0] = FUNC1(&card->dpram[DPRAM_FCT_PARAM + 8]);
	card->id.chip[1] = FUNC1(&card->dpram[DPRAM_FCT_PARAM + 10]);
	return 0;
failed:
	return ret;
}