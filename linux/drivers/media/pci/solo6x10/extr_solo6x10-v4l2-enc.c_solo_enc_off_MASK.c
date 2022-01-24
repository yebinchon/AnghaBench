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
struct solo_enc_dev {int /*<<< orphan*/  ch; scalar_t__ bw_weight; struct solo_dev* solo_dev; } ;
struct solo_dev {int /*<<< orphan*/  enc_bw_remain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct solo_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct solo_enc_dev *solo_enc)
{
	struct solo_dev *solo_dev = solo_enc->solo_dev;

	solo_dev->enc_bw_remain += solo_enc->bw_weight;

	FUNC2(solo_dev, FUNC1(solo_enc->ch), 0);
	FUNC2(solo_dev, FUNC0(solo_enc->ch), 0);
}