#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_15__ {int up; int /*<<< orphan*/  lock; } ;
struct softing {int dpram_size; TYPE_5__ fw; TYPE_6__* pdev; TYPE_4__* pdat; int /*<<< orphan*/ * dpram; } ;
typedef  int /*<<< orphan*/  stream ;
struct TYPE_16__ {int /*<<< orphan*/  dev; } ;
struct TYPE_13__ {int /*<<< orphan*/  fw; } ;
struct TYPE_12__ {scalar_t__ addr; scalar_t__ offs; int /*<<< orphan*/  fw; } ;
struct TYPE_11__ {scalar_t__ addr; scalar_t__ offs; int /*<<< orphan*/  fw; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* reset ) (TYPE_6__*,int) ;int /*<<< orphan*/  (* enable_irq ) (TYPE_6__*,int) ;TYPE_3__ app; TYPE_2__ load; TYPE_1__ boot; } ;

/* Variables and functions */
 int EIO ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int const*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int const*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct softing*,int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (struct softing*) ; 
 int /*<<< orphan*/  FUNC9 (struct softing*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct softing*) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct softing*,int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct softing*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC18 () ; 

__attribute__((used)) static int FUNC19(struct softing *card)
{
	int ret, j;
	static const uint8_t stream[] = {
		0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, };
	unsigned char back[sizeof(stream)];

	if (FUNC5(&card->fw.lock))
		return -ERESTARTSYS;
	if (card->fw.up) {
		FUNC6(&card->fw.lock);
		return 0;
	}
	/* reset board */
	if (card->pdat->enable_irq)
		card->pdat->enable_irq(card->pdev, 1);
	/* boot card */
	FUNC12(card);
	if (card->pdat->reset)
		card->pdat->reset(card->pdev, 1);
	for (j = 0; (j + sizeof(stream)) < card->dpram_size;
			j += sizeof(stream)) {

		FUNC4(&card->dpram[j], stream, sizeof(stream));
		/* flush IO cache */
		FUNC1();
		FUNC3(back, &card->dpram[j], sizeof(stream));

		if (!FUNC2(back, stream, sizeof(stream)))
			continue;
		/* memory is not equal */
		FUNC0(&card->pdev->dev, "dpram failed at 0x%04x\n", j);
		ret = -EIO;
		goto failed;
	}
	FUNC18();
	/* load boot firmware */
	ret = FUNC11(card->pdat->boot.fw, card, card->dpram,
				card->dpram_size,
				card->pdat->boot.offs - card->pdat->boot.addr);
	if (ret < 0)
		goto failed;
	/* load loader firmware */
	ret = FUNC11(card->pdat->load.fw, card, card->dpram,
				card->dpram_size,
				card->pdat->load.offs - card->pdat->load.addr);
	if (ret < 0)
		goto failed;

	if (card->pdat->reset)
		card->pdat->reset(card->pdev, 0);
	FUNC9(card);
	ret = FUNC7(card, 0, "card boot");
	if (ret < 0)
		goto failed;
	ret = FUNC10(card->pdat->app.fw, card);
	if (ret < 0)
		goto failed;

	ret = FUNC8(card);
	if (ret < 0)
		goto failed;

	card->fw.up = 1;
	FUNC6(&card->fw.lock);
	return 0;
failed:
	card->fw.up = 0;
	if (card->pdat->enable_irq)
		card->pdat->enable_irq(card->pdev, 0);
	FUNC12(card);
	if (card->pdat->reset)
		card->pdat->reset(card->pdev, 1);
	FUNC6(&card->fw.lock);
	return ret;
}