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
struct ath_softc {struct ath_hw* sc_ah; } ;
struct ath_hw {int /*<<< orphan*/  curchan; } ;
struct ath_common {int dummy; } ;
struct ath9k_dfs_fft_40 {int dummy; } ;
struct ath9k_dfs_fft_20 {int /*<<< orphan*/  lower_bins; } ;

/* Variables and functions */
 scalar_t__ BIN_DELTA_MAX ; 
 scalar_t__ BIN_DELTA_MIN ; 
 int /*<<< orphan*/  DFS ; 
 int FFT_NUM_SAMPLES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_DIFF ; 
 int NUM_DIFFS ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct ath9k_dfs_fft_40*,int,int) ; 
 struct ath_common* FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static bool FUNC8(struct ath_softc *sc, u8 *data,
				 int datalen, bool is_ctl, bool is_ext)
{
	int i;
	int max_bin[FFT_NUM_SAMPLES];
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC4(ah);
	int prev_delta;

	if (FUNC0(ah->curchan)) {
		struct ath9k_dfs_fft_40 *fft = (struct ath9k_dfs_fft_40 *) data;
		int num_fft_packets = datalen / sizeof(*fft);
		if (num_fft_packets == 0)
			return false;

		FUNC5(common, DFS, "HT40: datalen=%d, num_fft_packets=%d\n",
			datalen, num_fft_packets);
		if (num_fft_packets < FFT_NUM_SAMPLES) {
			FUNC5(common, DFS, "not enough packets for chirp\n");
			return false;
		}
		/* HW sometimes adds 2 garbage bytes in front of FFT samples */
		if ((datalen % sizeof(*fft)) == 2) {
			fft = (struct ath9k_dfs_fft_40 *) (data + 2);
			FUNC5(common, DFS, "fixing datalen by 2\n");
		}
		if (FUNC1(ah->curchan))
			FUNC7(is_ctl, is_ext);

		for (i = 0; i < FFT_NUM_SAMPLES; i++)
			max_bin[i] = FUNC3(fft + i, is_ctl,
							      is_ext);
	} else {
		struct ath9k_dfs_fft_20 *fft = (struct ath9k_dfs_fft_20 *) data;
		int num_fft_packets = datalen / sizeof(*fft);
		if (num_fft_packets == 0)
			return false;
		FUNC5(common, DFS, "HT20: datalen=%d, num_fft_packets=%d\n",
			datalen, num_fft_packets);
		if (num_fft_packets < FFT_NUM_SAMPLES) {
			FUNC5(common, DFS, "not enough packets for chirp\n");
			return false;
		}
		/* in ht20, this is a 6-bit signed number => shift it to 0 */
		for (i = 0; i < FFT_NUM_SAMPLES; i++)
			max_bin[i] = FUNC6(fft[i].lower_bins) ^ 0x20;
	}
	FUNC5(common, DFS, "bin_max = [%d, %d, %d, %d]\n",
		max_bin[0], max_bin[1], max_bin[2], max_bin[3]);

	/* Check for chirp attributes within specs
	 * a) delta of adjacent max_bins is within range
	 * b) delta of adjacent deltas are within tolerance
	 */
	prev_delta = 0;
	for (i = 0; i < NUM_DIFFS; i++) {
		int ddelta = -1;
		int delta = max_bin[i + 1] - max_bin[i];

		/* ensure gradient is within valid range */
		if (FUNC2(delta) < BIN_DELTA_MIN || FUNC2(delta) > BIN_DELTA_MAX) {
			FUNC5(common, DFS, "CHIRP: invalid delta %d "
				"in sample %d\n", delta, i);
			return false;
		}
		if (i == 0)
			goto done;
		ddelta = delta - prev_delta;
		if (FUNC2(ddelta) > MAX_DIFF) {
			FUNC5(common, DFS, "CHIRP: ddelta %d too high\n",
				ddelta);
			return false;
		}
done:
		FUNC5(common, DFS, "CHIRP - %d: delta=%d, ddelta=%d\n",
			i, delta, ddelta);
		prev_delta = delta;
	}
	return true;
}