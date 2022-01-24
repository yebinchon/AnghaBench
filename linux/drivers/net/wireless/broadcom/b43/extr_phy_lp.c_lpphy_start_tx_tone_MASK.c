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
typedef  int u16 ;
struct cordic_iq {int i; int q; } ;
struct TYPE_2__ {struct b43_phy_lp* lp; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_lp {int tx_tone_freq; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ,int,int*) ; 
 struct cordic_iq FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct b43_wldev *dev, s32 freq, u16 max)
{
	struct b43_phy_lp *lpphy = dev->phy.lp;
	u16 buf[64];
	int i, samples = 0, theta = 0;
	int rotation = (((36 * freq) / 20) << 16) / 100;
	struct cordic_iq sample;

	lpphy->tx_tone_freq = freq;

	if (freq) {
		/* Find i for which abs(freq) integrally divides 20000 * i */
		for (i = 1; samples * FUNC4(freq) != 20000 * i; i++) {
			samples = (20000 * i) / FUNC4(freq);
			if(FUNC1(samples > 63))
				return;
		}
	} else {
		samples = 2;
	}

	for (i = 0; i < samples; i++) {
		sample = FUNC6(FUNC2(theta));
		theta += rotation;
		buf[i] = FUNC3((sample.i * max) & 0xFF) << 8;
		buf[i] |= FUNC3((sample.q * max) & 0xFF);
	}

	FUNC5(dev, FUNC0(5, 0), samples, buf);

	FUNC7(dev, samples, 0xFFFF, 0);
}