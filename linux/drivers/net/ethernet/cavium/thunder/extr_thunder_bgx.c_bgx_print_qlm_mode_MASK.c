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
typedef  size_t u8 ;
struct lmac {int lmac_type; int /*<<< orphan*/  use_training; } ;
struct device {int dummy; } ;
struct bgx {int bgx_id; int /*<<< orphan*/  is_dlm; struct lmac* lmac; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
#define  BGX_MODE_INVALID 135 
#define  BGX_MODE_QSGMII 134 
#define  BGX_MODE_RGMII 133 
#define  BGX_MODE_RXAUI 132 
#define  BGX_MODE_SGMII 131 
#define  BGX_MODE_XAUI 130 
#define  BGX_MODE_XFI 129 
#define  BGX_MODE_XLAUI 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,...) ; 

__attribute__((used)) static void FUNC2(struct bgx *bgx, u8 lmacid)
{
	struct device *dev = &bgx->pdev->dev;
	struct lmac *lmac;
	char str[27];

	if (!bgx->is_dlm && lmacid)
		return;

	lmac = &bgx->lmac[lmacid];
	if (!bgx->is_dlm)
		FUNC1(str, "BGX%d QLM mode", bgx->bgx_id);
	else
		FUNC1(str, "BGX%d LMAC%d mode", bgx->bgx_id, lmacid);

	switch (lmac->lmac_type) {
	case BGX_MODE_SGMII:
		FUNC0(dev, "%s: SGMII\n", (char *)str);
		break;
	case BGX_MODE_XAUI:
		FUNC0(dev, "%s: XAUI\n", (char *)str);
		break;
	case BGX_MODE_RXAUI:
		FUNC0(dev, "%s: RXAUI\n", (char *)str);
		break;
	case BGX_MODE_XFI:
		if (!lmac->use_training)
			FUNC0(dev, "%s: XFI\n", (char *)str);
		else
			FUNC0(dev, "%s: 10G_KR\n", (char *)str);
		break;
	case BGX_MODE_XLAUI:
		if (!lmac->use_training)
			FUNC0(dev, "%s: XLAUI\n", (char *)str);
		else
			FUNC0(dev, "%s: 40G_KR4\n", (char *)str);
		break;
	case BGX_MODE_QSGMII:
		FUNC0(dev, "%s: QSGMII\n", (char *)str);
		break;
	case BGX_MODE_RGMII:
		FUNC0(dev, "%s: RGMII\n", (char *)str);
		break;
	case BGX_MODE_INVALID:
		/* Nothing to do */
		break;
	}
}