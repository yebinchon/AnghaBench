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
typedef  int /*<<< orphan*/  u64 ;
typedef  size_t u16 ;
struct fft_sample_tlv {int dummy; } ;
struct TYPE_2__ {void* length; int /*<<< orphan*/  type; } ;
struct fft_sample_ht20 {size_t max_index; size_t bitmap_weight; size_t max_exp; int* data; void* max_magnitude; int /*<<< orphan*/  tsf; int /*<<< orphan*/  noise; int /*<<< orphan*/  rssi; void* freq; TYPE_1__ tlv; } ;
struct ath_spec_scan_priv {struct ath_hw* ah; } ;
struct ath_rx_status {int /*<<< orphan*/ * rs_rssi_ctl; } ;
struct ath_hw {int /*<<< orphan*/  noise; } ;
struct ath_ht20_mag_info {int max_exp; int /*<<< orphan*/  all_bins; } ;
struct ath_common {int dummy; } ;
typedef  int /*<<< orphan*/  fft_sample_20 ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_FFT_SAMPLE_HT20 ; 
 int SPECTRAL_HT20_NUM_BINS ; 
 int /*<<< orphan*/  SPECTRAL_SCAN ; 
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_spec_scan_priv*,struct fft_sample_tlv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,size_t*,int) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct ath_rx_status *rs,
			struct ath_spec_scan_priv *spec_priv,
			u8 *sample_buf,
			u64 tsf, u16 freq, int chan_type)
{
	struct fft_sample_ht20 fft_sample_20;
	struct ath_common *common = FUNC2(spec_priv->ah);
	struct ath_hw *ah = spec_priv->ah;
	struct ath_ht20_mag_info *mag_info;
	struct fft_sample_tlv *tlv;
	int i = 0;
	int ret = 0;
	int dc_pos = SPECTRAL_HT20_NUM_BINS / 2;
	u16 magnitude, tmp_mag, length;
	u8 max_index, bitmap_w, max_exp;

	length = sizeof(fft_sample_20) - sizeof(struct fft_sample_tlv);
	fft_sample_20.tlv.type = ATH_FFT_SAMPLE_HT20;
	fft_sample_20.tlv.length = FUNC0(length);
	fft_sample_20.freq = FUNC0(freq);
	fft_sample_20.rssi = FUNC5(rs->rs_rssi_ctl[0]);
	fft_sample_20.noise = ah->noise;

	mag_info = (struct ath_ht20_mag_info *) (sample_buf +
					SPECTRAL_HT20_NUM_BINS);

	magnitude = FUNC9(mag_info->all_bins);
	fft_sample_20.max_magnitude = FUNC0(magnitude);

	max_index = FUNC8(mag_info->all_bins);
	fft_sample_20.max_index = max_index;

	bitmap_w = FUNC7(mag_info->all_bins);
	fft_sample_20.bitmap_weight = bitmap_w;

	max_exp = mag_info->max_exp & 0xf;
	fft_sample_20.max_exp = max_exp;

	fft_sample_20.tsf = FUNC1(tsf);

	FUNC6(fft_sample_20.data, sample_buf, SPECTRAL_HT20_NUM_BINS);

	FUNC3(common, SPECTRAL_SCAN, "FFT HT20 frame: max mag 0x%X,"
					"max_mag_idx %i\n",
					magnitude >> max_exp,
					max_index);

	if ((fft_sample_20.data[max_index] & 0xf8) !=
	    ((magnitude >> max_exp) & 0xf8)) {
		FUNC3(common, SPECTRAL_SCAN, "Magnitude mismatch !\n");
		ret = -1;
	}

	/* DC value (value in the middle) is the blind spot of the spectral
	 * sample and invalid, interpolate it.
	 */
	fft_sample_20.data[dc_pos] = (fft_sample_20.data[dc_pos + 1] +
					fft_sample_20.data[dc_pos - 1]) / 2;

	/* Check if the maximum magnitude is indeed maximum,
	 * also if the maximum value was at dc_pos, calculate
	 * a new one (since value at dc_pos is invalid).
	 */
	if (max_index == dc_pos) {
		tmp_mag = 0;
		for (i = 0; i < dc_pos; i++) {
			if (fft_sample_20.data[i] > tmp_mag) {
				tmp_mag = fft_sample_20.data[i];
				fft_sample_20.max_index = i;
			}
		}

		magnitude = tmp_mag << max_exp;
		fft_sample_20.max_magnitude = FUNC0(magnitude);

		FUNC3(common, SPECTRAL_SCAN,
			"Calculated new lower max 0x%X at %i\n",
			tmp_mag, fft_sample_20.max_index);
	} else
	for (i = 0; i < SPECTRAL_HT20_NUM_BINS; i++) {
		if (fft_sample_20.data[i] == (magnitude >> max_exp))
			FUNC3(common, SPECTRAL_SCAN,
				"Got max: 0x%X at index %i\n",
				fft_sample_20.data[i], i);

		if (fft_sample_20.data[i] > (magnitude >> max_exp)) {
			FUNC3(common, SPECTRAL_SCAN,
				"Got bin %i greater than max: 0x%X\n",
				i, fft_sample_20.data[i]);
			ret = -1;
		}
	}

	if (ret < 0)
		return ret;

	tlv = (struct fft_sample_tlv *)&fft_sample_20;

	FUNC4(spec_priv, tlv);

	return 0;
}