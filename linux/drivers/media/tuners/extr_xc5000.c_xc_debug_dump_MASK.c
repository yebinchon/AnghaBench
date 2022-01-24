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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct xc5000_priv {scalar_t__ pll_register_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct xc5000_priv*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct xc5000_priv*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct xc5000_priv*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct xc5000_priv*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct xc5000_priv*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct xc5000_priv*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct xc5000_priv*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct xc5000_priv*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct xc5000_priv*,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct xc5000_priv*,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct xc5000_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct xc5000_priv *priv)
{
	u16 adc_envelope;
	u32 freq_error_hz = 0;
	u16 lock_status;
	u32 hsync_freq_hz = 0;
	u16 frame_lines;
	u16 quality;
	u16 snr;
	u16 totalgain;
	u8 hw_majorversion = 0, hw_minorversion = 0;
	u8 fw_majorversion = 0, fw_minorversion = 0;
	u16 fw_buildversion = 0;
	u16 regval;

	/* Wait for stats to stabilize.
	 * Frame Lines needs two frame times after initial lock
	 * before it is valid.
	 */
	FUNC1(100);

	FUNC3(priv,  &adc_envelope);
	FUNC0(1, "*** ADC envelope (0-1023) = %d\n", adc_envelope);

	FUNC7(priv, &freq_error_hz);
	FUNC0(1, "*** Frequency error = %d Hz\n", freq_error_hz);

	FUNC9(priv,  &lock_status);
	FUNC0(1, "*** Lock status (0-Wait, 1-Locked, 2-No-signal) = %d\n",
		lock_status);

	FUNC12(priv,  &hw_majorversion, &hw_minorversion,
		&fw_majorversion, &fw_minorversion);
	FUNC5(priv,  &fw_buildversion);
	FUNC0(1, "*** HW: V%d.%d, FW: V %d.%d.%d\n",
		hw_majorversion, hw_minorversion,
		fw_majorversion, fw_minorversion, fw_buildversion);

	FUNC8(priv,  &hsync_freq_hz);
	FUNC0(1, "*** Horizontal sync frequency = %d Hz\n", hsync_freq_hz);

	FUNC6(priv,  &frame_lines);
	FUNC0(1, "*** Frame lines = %d\n", frame_lines);

	FUNC10(priv,  &quality);
	FUNC0(1, "*** Quality (0:<8dB, 7:>56dB) = %d\n", quality & 0x07);

	FUNC4(priv,  &snr);
	FUNC0(1, "*** Unweighted analog SNR = %d dB\n", snr & 0x3f);

	FUNC11(priv,  &totalgain);
	FUNC0(1, "*** Total gain = %d.%d dB\n", totalgain / 256,
		(totalgain % 256) * 100 / 256);

	if (priv->pll_register_no) {
		if (!FUNC2(priv, priv->pll_register_no, &regval))
			FUNC0(1, "*** PLL lock status = 0x%04x\n", regval);
	}
}