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
struct fft_sample_tlv {int /*<<< orphan*/  length; } ;
struct TYPE_2__ {int /*<<< orphan*/  rfs_chan_spec_scan; } ;
struct ath10k {TYPE_1__ spectral; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct fft_sample_tlv const*,int) ; 

__attribute__((used)) static void FUNC2(struct ath10k *ar,
			    const struct fft_sample_tlv *fft_sample_tlv)
{
	int length;

	if (!ar->spectral.rfs_chan_spec_scan)
		return;

	length = FUNC0(fft_sample_tlv->length) +
		 sizeof(*fft_sample_tlv);
	FUNC1(ar->spectral.rfs_chan_spec_scan, fft_sample_tlv, length);
}