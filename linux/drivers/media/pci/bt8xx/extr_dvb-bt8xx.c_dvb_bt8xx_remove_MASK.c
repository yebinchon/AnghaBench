#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  (* remove_frontend ) (TYPE_1__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_6__ {TYPE_1__ dmx; } ;
struct dvb_bt8xx_card {int /*<<< orphan*/  dvb_adapter; scalar_t__ fe; TYPE_3__ demux; int /*<<< orphan*/  dmxdev; int /*<<< orphan*/  fe_hw; int /*<<< orphan*/  fe_mem; int /*<<< orphan*/  dvbnet; TYPE_4__* bt; int /*<<< orphan*/  bttv_nr; } ;
struct bttv_sub_device {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  tasklet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 struct dvb_bt8xx_card* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct dvb_bt8xx_card*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct bttv_sub_device *sub)
{
	struct dvb_bt8xx_card *card = FUNC1(&sub->dev);

	FUNC2("dvb_bt8xx: unloading card%d\n", card->bttv_nr);

	FUNC0(card->bt);
	FUNC12(&card->bt->tasklet);
	FUNC6(&card->dvbnet);
	card->demux.dmx.remove_frontend(&card->demux.dmx, &card->fe_mem);
	card->demux.dmx.remove_frontend(&card->demux.dmx, &card->fe_hw);
	FUNC4(&card->dmxdev);
	FUNC3(&card->demux);
	if (card->fe) {
		FUNC8(card->fe);
		FUNC5(card->fe);
	}
	FUNC7(&card->dvb_adapter);

	FUNC9(card);
}