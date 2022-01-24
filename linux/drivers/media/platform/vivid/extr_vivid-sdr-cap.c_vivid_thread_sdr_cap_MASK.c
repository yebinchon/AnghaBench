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
typedef  int u64 ;
struct vivid_dev {int sdr_cap_seq_offset; unsigned long jiffies_sdr_cap; int sdr_cap_seq_resync; int sdr_cap_seq_count; int sdr_adc_freq; int /*<<< orphan*/  mutex; scalar_t__ seq_wrap; } ;

/* Variables and functions */
 int HZ ; 
 unsigned long JIFFIES_RESYNC ; 
 int SDR_CAP_SAMPLES_PER_BUF ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vivid_dev*,int,char*) ; 
 void* jiffies ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct vivid_dev*) ; 

__attribute__((used)) static int FUNC9(void *data)
{
	struct vivid_dev *dev = data;
	u64 samples_since_start;
	u64 buffers_since_start;
	u64 next_jiffies_since_start;
	unsigned long jiffies_since_start;
	unsigned long cur_jiffies;
	unsigned wait_jiffies;

	FUNC1(dev, 1, "SDR Capture Thread Start\n");

	FUNC6();

	/* Resets frame counters */
	dev->sdr_cap_seq_offset = 0;
	if (dev->seq_wrap)
		dev->sdr_cap_seq_offset = 0xffffff80U;
	dev->jiffies_sdr_cap = jiffies;
	dev->sdr_cap_seq_resync = false;

	for (;;) {
		FUNC7();
		if (FUNC2())
			break;

		FUNC3(&dev->mutex);
		cur_jiffies = jiffies;
		if (dev->sdr_cap_seq_resync) {
			dev->jiffies_sdr_cap = cur_jiffies;
			dev->sdr_cap_seq_offset = dev->sdr_cap_seq_count + 1;
			dev->sdr_cap_seq_count = 0;
			dev->sdr_cap_seq_resync = false;
		}
		/* Calculate the number of jiffies since we started streaming */
		jiffies_since_start = cur_jiffies - dev->jiffies_sdr_cap;
		/* Get the number of buffers streamed since the start */
		buffers_since_start =
			(u64)jiffies_since_start * dev->sdr_adc_freq +
				      (HZ * SDR_CAP_SAMPLES_PER_BUF) / 2;
		FUNC0(buffers_since_start, HZ * SDR_CAP_SAMPLES_PER_BUF);

		/*
		 * After more than 0xf0000000 (rounded down to a multiple of
		 * 'jiffies-per-day' to ease jiffies_to_msecs calculation)
		 * jiffies have passed since we started streaming reset the
		 * counters and keep track of the sequence offset.
		 */
		if (jiffies_since_start > JIFFIES_RESYNC) {
			dev->jiffies_sdr_cap = cur_jiffies;
			dev->sdr_cap_seq_offset = buffers_since_start;
			buffers_since_start = 0;
		}
		dev->sdr_cap_seq_count =
			buffers_since_start + dev->sdr_cap_seq_offset;

		FUNC8(dev);
		FUNC4(&dev->mutex);

		/*
		 * Calculate the number of samples streamed since we started,
		 * not including the current buffer.
		 */
		samples_since_start = buffers_since_start * SDR_CAP_SAMPLES_PER_BUF;

		/* And the number of jiffies since we started */
		jiffies_since_start = jiffies - dev->jiffies_sdr_cap;

		/* Increase by the number of samples in one buffer */
		samples_since_start += SDR_CAP_SAMPLES_PER_BUF;
		/*
		 * Calculate when that next buffer is supposed to start
		 * in jiffies since we started streaming.
		 */
		next_jiffies_since_start = samples_since_start * HZ +
					   dev->sdr_adc_freq / 2;
		FUNC0(next_jiffies_since_start, dev->sdr_adc_freq);
		/* If it is in the past, then just schedule asap */
		if (next_jiffies_since_start < jiffies_since_start)
			next_jiffies_since_start = jiffies_since_start;

		wait_jiffies = next_jiffies_since_start - jiffies_since_start;
		FUNC5(wait_jiffies ? wait_jiffies : 1);
	}
	FUNC1(dev, 1, "SDR Capture Thread End\n");
	return 0;
}