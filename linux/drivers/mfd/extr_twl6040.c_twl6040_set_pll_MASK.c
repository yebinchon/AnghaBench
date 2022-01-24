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
struct twl6040 {int pll; unsigned int sysclk_rate; unsigned int mclk_rate; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  mclk; } ;

/* Variables and functions */
 int EINVAL ; 
 int TWL6040_HPLLBP ; 
 int TWL6040_HPLLENA ; 
 int TWL6040_HPLLSEL ; 
 int TWL6040_HPLLSQRENA ; 
 int TWL6040_LPLLENA ; 
 int TWL6040_LPLLFIN ; 
 int TWL6040_MCLK_12000KHZ ; 
 int TWL6040_MCLK_19200KHZ ; 
 int TWL6040_MCLK_26000KHZ ; 
 int TWL6040_MCLK_38400KHZ ; 
 int TWL6040_MCLK_MSK ; 
 int /*<<< orphan*/  TWL6040_REG_HPPLLCTL ; 
 int /*<<< orphan*/  TWL6040_REG_LPPLLCTL ; 
#define  TWL6040_SYSCLK_SEL_HPPLL 129 
#define  TWL6040_SYSCLK_SEL_LPPLL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct twl6040*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct twl6040*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

int FUNC9(struct twl6040 *twl6040, int pll_id,
		    unsigned int freq_in, unsigned int freq_out)
{
	u8 hppllctl, lppllctl;
	int ret = 0;

	FUNC4(&twl6040->mutex);

	hppllctl = FUNC6(twl6040, TWL6040_REG_HPPLLCTL);
	lppllctl = FUNC6(twl6040, TWL6040_REG_LPPLLCTL);

	/* Force full reconfiguration when switching between PLL */
	if (pll_id != twl6040->pll) {
		twl6040->sysclk_rate = 0;
		twl6040->mclk_rate = 0;
	}

	switch (pll_id) {
	case TWL6040_SYSCLK_SEL_LPPLL:
		/* low-power PLL divider */
		/* Change the sysclk configuration only if it has been canged */
		if (twl6040->sysclk_rate != freq_out) {
			switch (freq_out) {
			case 17640000:
				lppllctl |= TWL6040_LPLLFIN;
				break;
			case 19200000:
				lppllctl &= ~TWL6040_LPLLFIN;
				break;
			default:
				FUNC2(twl6040->dev,
					"freq_out %d not supported\n",
					freq_out);
				ret = -EINVAL;
				goto pll_out;
			}
			FUNC7(twl6040, TWL6040_REG_LPPLLCTL,
					  lppllctl);
		}

		/* The PLL in use has not been change, we can exit */
		if (twl6040->pll == pll_id)
			break;

		switch (freq_in) {
		case 32768:
			lppllctl |= TWL6040_LPLLENA;
			FUNC7(twl6040, TWL6040_REG_LPPLLCTL,
					  lppllctl);
			FUNC3(5);
			lppllctl &= ~TWL6040_HPLLSEL;
			FUNC7(twl6040, TWL6040_REG_LPPLLCTL,
					  lppllctl);
			hppllctl &= ~TWL6040_HPLLENA;
			FUNC7(twl6040, TWL6040_REG_HPPLLCTL,
					  hppllctl);
			break;
		default:
			FUNC2(twl6040->dev,
				"freq_in %d not supported\n", freq_in);
			ret = -EINVAL;
			goto pll_out;
		}

		FUNC0(twl6040->mclk);
		break;
	case TWL6040_SYSCLK_SEL_HPPLL:
		/* high-performance PLL can provide only 19.2 MHz */
		if (freq_out != 19200000) {
			FUNC2(twl6040->dev,
				"freq_out %d not supported\n", freq_out);
			ret = -EINVAL;
			goto pll_out;
		}

		if (twl6040->mclk_rate != freq_in) {
			hppllctl &= ~TWL6040_MCLK_MSK;

			switch (freq_in) {
			case 12000000:
				/* PLL enabled, active mode */
				hppllctl |= TWL6040_MCLK_12000KHZ |
					    TWL6040_HPLLENA;
				break;
			case 19200000:
				/* PLL enabled, bypass mode */
				hppllctl |= TWL6040_MCLK_19200KHZ |
					    TWL6040_HPLLBP | TWL6040_HPLLENA;
				break;
			case 26000000:
				/* PLL enabled, active mode */
				hppllctl |= TWL6040_MCLK_26000KHZ |
					    TWL6040_HPLLENA;
				break;
			case 38400000:
				/* PLL enabled, bypass mode */
				hppllctl |= TWL6040_MCLK_38400KHZ |
					    TWL6040_HPLLBP | TWL6040_HPLLENA;
				break;
			default:
				FUNC2(twl6040->dev,
					"freq_in %d not supported\n", freq_in);
				ret = -EINVAL;
				goto pll_out;
			}

			/* When switching to HPPLL, enable the mclk first */
			if (pll_id != twl6040->pll)
				FUNC1(twl6040->mclk);
			/*
			 * enable clock slicer to ensure input waveform is
			 * square
			 */
			hppllctl |= TWL6040_HPLLSQRENA;

			FUNC7(twl6040, TWL6040_REG_HPPLLCTL,
					  hppllctl);
			FUNC8(500, 700);
			lppllctl |= TWL6040_HPLLSEL;
			FUNC7(twl6040, TWL6040_REG_LPPLLCTL,
					  lppllctl);
			lppllctl &= ~TWL6040_LPLLENA;
			FUNC7(twl6040, TWL6040_REG_LPPLLCTL,
					  lppllctl);

			twl6040->mclk_rate = freq_in;
		}
		break;
	default:
		FUNC2(twl6040->dev, "unknown pll id %d\n", pll_id);
		ret = -EINVAL;
		goto pll_out;
	}

	twl6040->sysclk_rate = freq_out;
	twl6040->pll = pll_id;

pll_out:
	FUNC5(&twl6040->mutex);
	return ret;
}