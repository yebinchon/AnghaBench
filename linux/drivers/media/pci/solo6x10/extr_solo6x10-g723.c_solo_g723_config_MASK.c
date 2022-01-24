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
struct solo_dev {int clock_mhz; } ;

/* Variables and functions */
 int BITRATE ; 
 int /*<<< orphan*/  G723_INTR_ORDER ; 
 int /*<<< orphan*/  OUTMODE_MASK ; 
 int SAMPLERATE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  SOLO_AUDIO_CONTROL ; 
 int SOLO_AUDIO_ENABLE ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  SOLO_AUDIO_FDMA_INTR ; 
 int SOLO_AUDIO_I2S_MODE ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOLO_AUDIO_SAMPLE ; 
 int FUNC7 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct solo_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct solo_dev *solo_dev)
{
	int clk_div;

	clk_div = (solo_dev->clock_mhz * 1000000)
		/ (SAMPLERATE * (BITRATE * 2) * 2);

	FUNC8(solo_dev, SOLO_AUDIO_SAMPLE,
		       FUNC0(BITRATE)
		       | FUNC1(clk_div));

	FUNC8(solo_dev, SOLO_AUDIO_FDMA_INTR,
		       FUNC3(1)
		       | FUNC5(G723_INTR_ORDER)
		       | FUNC2(FUNC7(solo_dev) >> 16));

	FUNC8(solo_dev, SOLO_AUDIO_CONTROL,
		       SOLO_AUDIO_ENABLE
		       | SOLO_AUDIO_I2S_MODE
		       | FUNC4(3)
		       | FUNC6(OUTMODE_MASK));
}