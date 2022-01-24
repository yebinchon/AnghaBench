#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int type; } ;
struct bttv {int use_i2c_hw; TYPE_1__ c; } ;
struct TYPE_4__ {int /*<<< orphan*/  has_dvb; } ;

/* Variables and functions */
#define  BTTV_BOARD_ADLINK_RTV24 138 
#define  BTTV_BOARD_AVDVBT_771 137 
#define  BTTV_BOARD_AVERMEDIA98 136 
#define  BTTV_BOARD_HAUPPAUGE 135 
#define  BTTV_BOARD_HAUPPAUGE878 134 
#define  BTTV_BOARD_HAUPPAUGEPVR 133 
#define  BTTV_BOARD_PCI_8604PW 132 
#define  BTTV_BOARD_PINNACLESAT 131 
#define  BTTV_BOARD_TWINHAN_DST 130 
#define  BTTV_BOARD_VOODOOTV_200 129 
#define  BTTV_BOARD_VOODOOTV_FM 128 
 int /*<<< orphan*/  FUNC0 (struct bttv*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bttv*) ; 
 TYPE_2__* bttv_tvcards ; 
 int /*<<< orphan*/  FUNC2 (struct bttv*) ; 
 int /*<<< orphan*/  FUNC3 (struct bttv*) ; 
 int /*<<< orphan*/  FUNC4 (struct bttv*) ; 

void FUNC5(struct bttv *btv)
{
	switch (btv->c.type) {
	case BTTV_BOARD_HAUPPAUGE:
	case BTTV_BOARD_HAUPPAUGE878:
		FUNC0(btv,5);
		break;
	case BTTV_BOARD_VOODOOTV_200:
	case BTTV_BOARD_VOODOOTV_FM:
		FUNC0(btv,20);
		break;
	case BTTV_BOARD_AVERMEDIA98:
		FUNC0(btv,11);
		break;
	case BTTV_BOARD_HAUPPAUGEPVR:
		FUNC4(btv);
		break;
	case BTTV_BOARD_TWINHAN_DST:
	case BTTV_BOARD_AVDVBT_771:
	case BTTV_BOARD_PINNACLESAT:
		btv->use_i2c_hw = 1;
		break;
	case BTTV_BOARD_ADLINK_RTV24:
		FUNC3( btv );
		break;
	case BTTV_BOARD_PCI_8604PW:
		FUNC2(btv);
		break;

	}
	if (!bttv_tvcards[btv->c.type].has_dvb)
		FUNC1(btv);
}