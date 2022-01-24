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
struct solo_enc_dev {int ch; scalar_t__ bw_weight; scalar_t__ type; int interval; int gop; int qp; int mode; scalar_t__ interlaced; scalar_t__ sequence; struct solo_dev* solo_dev; } ;
struct solo_dev {scalar_t__ enc_bw_remain; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ SOLO_ENC_TYPE_EXT ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct solo_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct solo_enc_dev*) ; 

__attribute__((used)) static int FUNC11(struct solo_enc_dev *solo_enc)
{
	u8 ch = solo_enc->ch;
	struct solo_dev *solo_dev = solo_enc->solo_dev;
	u8 interval;

	FUNC10(solo_enc);

	/* Make sure to do a bandwidth check */
	if (solo_enc->bw_weight > solo_dev->enc_bw_remain)
		return -EBUSY;
	solo_enc->sequence = 0;
	solo_dev->enc_bw_remain -= solo_enc->bw_weight;

	if (solo_enc->type == SOLO_ENC_TYPE_EXT)
		FUNC9(solo_dev, FUNC0(ch), 1);

	/* Disable all encoding for this channel */
	FUNC9(solo_dev, FUNC3(ch), 0);

	/* Common for both std and ext encoding */
	FUNC9(solo_dev, FUNC6(ch),
		       solo_enc->interlaced ? 1 : 0);

	if (solo_enc->interlaced)
		interval = solo_enc->interval - 1;
	else
		interval = solo_enc->interval;

	/* Standard encoding only */
	FUNC9(solo_dev, FUNC4(ch), solo_enc->gop);
	FUNC9(solo_dev, FUNC7(ch), solo_enc->qp);
	FUNC9(solo_dev, FUNC1(ch), interval);

	/* Extended encoding only */
	FUNC9(solo_dev, FUNC5(ch), solo_enc->gop);
	FUNC9(solo_dev, FUNC8(ch), solo_enc->qp);
	FUNC9(solo_dev, FUNC2(ch), interval);

	/* Enables the standard encoder */
	FUNC9(solo_dev, FUNC3(ch), solo_enc->mode);

	return 0;
}